-- DATA INSERTION 

-- Insert the institutions info into the etablissements table 
insert into Etablissements values ('etab 1', 'estin', 'informatique');
insert into Etablissements values ('etab 2', 'esi Alger', 'informatique');
insert into Etablissements values ('etab 3', 'esi Sidi_belabbes', 'informatique');

-- Insert the researchers info into the chercheurs table 
insert into chercheurs values ('cher 1', 'ziani', 'laldja', 'doctorante', (select ref(e) from etablissements e where e.code = 'etab 1'));
insert into chercheurs values ('cher 2', 'bouali', 'meriem', 'doctorante', (select ref(e) from etablissements e where e.code = 'etab 2'));
insert into chercheurs values ('cher 3', 'melchene', 'celestin', 'doctorante', (select ref(e) from etablissements e where e.code = 'etab 3'));
insert into chercheurs values ('cher 4', 'azzouger', 'dalila', 'doctorante', (select ref(e) from etablissements e where e.code = 'etab 1'));

-- Insert the prjects info into the projets table 
insert into projets values ('01/SDRF/2022', 'projet base de données', '4 mois','informatique', 'data science', 
                            (select ref(e) from etablissements e where e.code = 'etab 1'), 
                            (select ref(c) from chercheurs c where c.code = 'cher 1'), 
                            col_chercheur(ref_chercheur_type((select ref(c) from chercheurs c where c.code = 'cher 1')),
                                        ref_chercheur_type((select ref(c) from chercheurs c where c.code = 'cher 2')),
                                        ref_chercheur_type((select ref(c) from chercheurs c where c.code = 'cher 3'))));

insert into projets values ('02/SDRF/2022', 'projet SDRF', '4 mois','informatique', 'IA', 
                            (select ref(e) from etablissements e where e.code = 'etab 1'), 
                            (select ref(c) from chercheurs c where c.code = 'cher 2'), 
                            col_chercheur(ref_chercheur_type((select ref(c) from chercheurs c where c.code = 'cher 1')),
                                        ref_chercheur_type((select ref(c) from chercheurs c where c.code = 'cher 2')),
                                        ref_chercheur_type((select ref(c) from chercheurs c where c.code = 'cher 3')),
                                        ref_chercheur_type((select ref(c) from chercheurs c where c.code = 'cher 4'))));

insert into projets values ('03/SDRF/2021', 'projet SDRF', '6 mois', 'informatique', 'IA', 
                            (select ref(e) from etablissements e where e.code = 'etab 2'), 
                            (select ref(c) from chercheurs c where c.code = 'cher 2'), 
                            col_chercheur(ref_chercheur_type((select ref(c) from chercheurs c where c.code = 'cher 1')),
                                        ref_chercheur_type((select ref(c) from chercheurs c where c.code = 'cher 2')),
                                        ref_chercheur_type((select ref(c) from chercheurs c where c.code = 'cher 4'))));