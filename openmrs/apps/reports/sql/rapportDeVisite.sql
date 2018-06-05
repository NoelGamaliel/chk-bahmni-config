SELECT
  pi.identifier                                 AS 'ID',
  typeDCohorte.concept_full_name                AS 'Type cohorte',
  concat_ws(' ', pn.given_name, pn.family_name) AS 'Nom',
  concat(floor(datediff(now(), p.birthdate) / 365), ' ans, ', floor((datediff(now(), p.birthdate) % 365) / 30),
         ' mois')                               AS 'Age',
  date_format(p.birthdate, '%d-%m-%Y')          AS 'Date de naissance',
  CASE WHEN p.gender = 'M'
    THEN 'H'
  WHEN p.gender = 'F'
    THEN 'F'
  WHEN p.gender = 'O'
    THEN 'A'
  ELSE p.gender END                             AS 'Sexe',
  dateEntreeCohore.value                        AS 'Date entree cohorte',
  vt.name                                       AS 'Type de visite',
  CASE WHEN DATE(p.date_created) = DATE(v.date_started)
    THEN 'New Visit'
  ELSE NULL END                                 AS 'Nouvelle visite',
  consultant_name.names                         AS 'Consultant',
  prev_appt_date.value_datetime                 AS 'Date de rendez-vous',
  DATE(v.date_started)                          AS 'Date debut visite',
  DATE(v.date_stopped)                          AS 'Date fin visite'
FROM visit v
  INNER JOIN visit_type vt ON vt.visit_type_id = v.visit_type_id AND vt.retired IS FALSE
  INNER JOIN patient_identifier pi ON pi.patient_id = v.patient_id AND pi.voided IS FALSE
  INNER JOIN person p ON p.person_id = pi.patient_id AND p.voided IS FALSE
  INNER JOIN person_name pn ON pn.person_id = pi.patient_id AND pn.voided IS FALSE
  LEFT JOIN (
              SELECT
                person_id,
                cv.concept_full_name
              FROM person_attribute pa
                INNER JOIN person_attribute_type pat
                  ON pat.person_attribute_type_id = pa.person_attribute_type_id AND pa.voided IS FALSE AND
                     pat.retired IS FALSE
                INNER JOIN concept_view cv ON cv.concept_id = pa.value AND cv.retired IS FALSE
              WHERE pat.name = 'Type de cohorte'
            ) typeDCohorte ON typeDCohorte.person_id = pi.patient_id
  LEFT JOIN (
              SELECT
                person_id,
                pa.value
              FROM person_attribute pa
                INNER JOIN person_attribute_type pat
                  ON pat.person_attribute_type_id = pa.person_attribute_type_id AND pa.voided IS FALSE AND
                     pat.retired IS FALSE
              WHERE pat.name = 'Date entrée cohorte'
            ) dateEntreeCohore ON dateEntreeCohore.person_id = pi.patient_id
  LEFT JOIN (SELECT
               v.patient_id,
               v.visit_id,
               GROUP_CONCAT(DISTINCT (concat_ws(' ', pn.given_name, pn.family_name))) AS 'names'
             FROM visit v INNER JOIN encounter e ON e.visit_id = v.visit_id
               INNER JOIN users u ON u.user_id = e.creator AND u.retired IS FALSE
               INNER JOIN person_name pn ON pn.person_id = u.person_id AND pn.voided IS FALSE
             GROUP BY v.visit_id) consultant_name ON consultant_name.visit_id = v.visit_id
  LEFT JOIN (
              SELECT
                obs.person_id,
                obs.value_datetime,
                latest_obs.visit_id
              FROM obs obs
                INNER JOIN encounter en
                  ON en.encounter_id = obs.encounter_id AND obs.voided IS FALSE AND en.voided IS FALSE
                INNER JOIN concept_view cv
                  ON cv.concept_id = obs.concept_id AND
                     cv.concept_full_name IN ('Date de prochain RDV', 'Date du prochain RDV') AND
                     cv.retired IS FALSE
                INNER JOIN (SELECT
                              pv.visit_id,
                              pv.prev_visit_id,
                              MAX(o.obs_datetime) AS obsDateTime
                            FROM obs o
                              INNER JOIN encounter e
                                ON e.encounter_id = o.encounter_id AND o.voided IS FALSE AND e.voided IS FALSE
                              INNER JOIN concept_view cv
                                ON cv.concept_id = o.concept_id AND
                                   cv.concept_full_name IN ('Date de prochain RDV', 'Date du prochain RDV') AND
                                   cv.retired IS FALSE
                              INNER JOIN (SELECT
                                            v.patient_id,
                                            v.visit_id,
                                            max(prev_visit.visit_id) AS prev_visit_id
                                          FROM
                                            visit v
                                            LEFT JOIN
                                            visit prev_visit ON v.visit_id > prev_visit.visit_id AND
                                                                v.patient_id = prev_visit.patient_id
                                          GROUP BY v.visit_id) pv ON pv.prev_visit_id = e.visit_id
                            GROUP BY pv.visit_id) latest_obs
                  ON latest_obs.prev_visit_id = en.visit_id AND latest_obs.obsDateTime = obs.obs_datetime
            ) prev_appt_date
    ON prev_appt_date.visit_id = v.visit_id
WHERE DATE(v.date_started) BETWEEN DATE('#startDate#') AND DATE('#endDate#');