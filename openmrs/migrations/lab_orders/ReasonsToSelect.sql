call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'Raisons du test de laboratoire','Raisons du test de laboratoire','Coded','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'CV ciblée','CV ciblée','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'Donnée manquante','Donnée manquante','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M12/1L','M12/1L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M12/2L','M12/2L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M12/3L','M12/3L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M3/1L','M3/1L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M3/2L','M3/2L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M3/3L','M3/3L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M6/1L','M6/1L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M6/2L','M6/2L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M6/3L','M6/3L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M9/1L','M9/1L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M9/2L','M9/2L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'M9/3L','M9/3L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'ROUT/1L','ROUT/1L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'ROUT/2L','ROUT/2L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'ROUT/3L','ROUT/3L','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'SET/L1','SET/L1','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'SET/L2','SET/L2','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'TB - DIAGNOSTIC/NOUVEAU CAS','TB - DIAGNOSTIC/NOUVEAU CAS','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'TB - DIAGNOSTIC/ANTECEDENT TB','TB - DIAGNOSTIC/ANTECEDENT TB','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'TB - CONTROLE F2','TB - CONTROLE F2','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'TB - CONTROLE F3','TB - CONTROLE F3','N/A','Misc',FALSE);
call add_concept_fr(@concept_id,@concept_short_id,@concept_full_id,'TB - CONTROLE F5','TB - CONTROLE F5','N/A','Misc',FALSE);

set @concept_id = 0;
set @child1_concept_id = 0;
set @child2_concept_id = 0;
set @child3_concept_id = 0;
set @child4_concept_id = 0;
set @child5_concept_id = 0;
set @child6_concept_id = 0;
set @child7_concept_id = 0;
set @child8_concept_id = 0;
set @child9_concept_id = 0;
set @child10_concept_id = 0;
set @child11_concept_id = 0;
set @child12_concept_id = 0;
set @child13_concept_id = 0;
set @child14_concept_id = 0;
set @child15_concept_id = 0;
set @child16_concept_id = 0;
set @child17_concept_id = 0;
set @child18_concept_id = 0;
set @child19_concept_id = 0;
set @child20_concept_id = 0;
set @child21_concept_id = 0;
set @child22_concept_id = 0;
set @child24_concept_id = 0;
<<<<<<< HEAD
set @child25_concept_id = 0;
=======
>>>>>>> ebd627f... Mahitha | #252 | Added migrations to create reasons concepts for lab orders

select concept_id into @concept_id from concept_name where name = 'Raisons du test de laboratoire' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;

select concept_id into @child1_concept_id from concept_name where name = 'CV ciblée' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child2_concept_id from concept_name where name = 'Donnée manquante' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child3_concept_id from concept_name where name = 'M12/1L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child4_concept_id from concept_name where name = 'M12/2L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child5_concept_id from concept_name where name = 'M12/3L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child6_concept_id from concept_name where name = 'M3/1L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child7_concept_id from concept_name where name = 'M3/2L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child8_concept_id from concept_name where name = 'M3/3L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child9_concept_id from concept_name where name = 'M6/1L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child10_concept_id from concept_name where name = 'M6/2L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child11_concept_id from concept_name where name = 'M6/3L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child12_concept_id from concept_name where name = 'M9/1L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child13_concept_id from concept_name where name = 'M9/2L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child14_concept_id from concept_name where name = 'M9/3L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child15_concept_id from concept_name where name = 'ROUT/1L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child16_concept_id from concept_name where name = 'ROUT/2L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child17_concept_id from concept_name where name = 'ROUT/3L' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child18_concept_id from concept_name where name = 'SET/L1' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child19_concept_id from concept_name where name = 'SET/L2' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child20_concept_id from concept_name where name = 'TB - DIAGNOSTIC/NOUVEAU CAS' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child21_concept_id from concept_name where name = 'TB - DIAGNOSTIC/ANTECEDENT TB' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child22_concept_id from concept_name where name = 'TB - CONTROLE F2' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child23_concept_id from concept_name where name = 'TB - CONTROLE F3' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
select concept_id into @child24_concept_id from concept_name where name = 'TB - CONTROLE F5' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;
<<<<<<< HEAD
select concept_id into @child25_concept_id from concept_name where name = 'Autres' and concept_name_type = 'FULLY_SPECIFIED' and locale = 'fr' and voided = 0;


call add_concept_answer(@concept_id, @child1_concept_id, 1);
call add_concept_answer(@concept_id, @child2_concept_id, 2);
call add_concept_answer(@concept_id, @child3_concept_id, 3);
call add_concept_answer(@concept_id, @child4_concept_id, 4);
call add_concept_answer(@concept_id, @child5_concept_id, 5);
call add_concept_answer(@concept_id, @child6_concept_id, 6);
call add_concept_answer(@concept_id, @child7_concept_id, 7);
call add_concept_answer(@concept_id, @child8_concept_id, 8);
call add_concept_answer(@concept_id, @child9_concept_id, 9);
call add_concept_answer(@concept_id, @child10_concept_id, 10);
call add_concept_answer(@concept_id, @child11_concept_id, 11);
call add_concept_answer(@concept_id, @child12_concept_id, 12);
call add_concept_answer(@concept_id, @child13_concept_id, 13);
call add_concept_answer(@concept_id, @child14_concept_id, 14);
call add_concept_answer(@concept_id, @child15_concept_id, 15);
call add_concept_answer(@concept_id, @child16_concept_id, 16);
call add_concept_answer(@concept_id, @child17_concept_id, 17);
call add_concept_answer(@concept_id, @child18_concept_id, 18);
call add_concept_answer(@concept_id, @child19_concept_id, 19);
call add_concept_answer(@concept_id, @child20_concept_id, 20);
call add_concept_answer(@concept_id, @child21_concept_id, 21);
call add_concept_answer(@concept_id, @child22_concept_id, 22);
call add_concept_answer(@concept_id, @child23_concept_id, 23);
call add_concept_answer(@concept_id, @child24_concept_id, 24);
call add_concept_answer(@concept_id, @child25_concept_id, 25);
=======


call add_concept_set_members(@concept_id, @child1_concept_id, 1);
call add_concept_set_members(@concept_id, @child2_concept_id, 2);
call add_concept_set_members(@concept_id, @child3_concept_id, 3);
call add_concept_set_members(@concept_id, @child4_concept_id, 4);
call add_concept_set_members(@concept_id, @child5_concept_id, 5);
call add_concept_set_members(@concept_id, @child6_concept_id, 6);
call add_concept_set_members(@concept_id, @child7_concept_id, 7);
call add_concept_set_members(@concept_id, @child8_concept_id, 8);
call add_concept_set_members(@concept_id, @child9_concept_id, 9);
call add_concept_set_members(@concept_id, @child10_concept_id, 10);
call add_concept_set_members(@concept_id, @child11_concept_id, 11);
call add_concept_set_members(@concept_id, @child12_concept_id, 12);
call add_concept_set_members(@concept_id, @child13_concept_id, 13);
call add_concept_set_members(@concept_id, @child14_concept_id, 14);
call add_concept_set_members(@concept_id, @child15_concept_id, 15);
call add_concept_set_members(@concept_id, @child16_concept_id, 16);
call add_concept_set_members(@concept_id, @child17_concept_id, 17);
call add_concept_set_members(@concept_id, @child18_concept_id, 18);
call add_concept_set_members(@concept_id, @child19_concept_id, 19);
call add_concept_set_members(@concept_id, @child20_concept_id, 20);
call add_concept_set_members(@concept_id, @child21_concept_id, 21);
call add_concept_set_members(@concept_id, @child22_concept_id, 22);
call add_concept_set_members(@concept_id, @child23_concept_id, 23);
call add_concept_set_members(@concept_id, @child24_concept_id, 24);
>>>>>>> ebd627f... Mahitha | #252 | Added migrations to create reasons concepts for lab orders
