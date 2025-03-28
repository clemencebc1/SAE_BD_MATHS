insert into Piece_Infos values (3, 'Panneau de fuselage', TO_DATE('2022/01/01',  'YYYY/MM/DD'),TO_DATE('2022/01/03',  'YYYY/MM/DD'), EquipeTab(EquipeT('Valin', 'Mecanicienne')), IndicesQualiteList(IndicesQualiteT('carbone',3,4), IndicesQualiteT('securite',4,4), IndicesQualiteT('prix',3,3)) );
insert into Piece_Infos values (5, 'Avion', TO_DATE('2022/01/01',  'YYYY/MM/DD'),TO_DATE('2025/08/03',  'YYYY/MM/DD'), EquipeTab(EquipeT('Valin', 'Mecanicienne'), EquipeT('Akhtar', 'Designeuse')), IndicesQualiteList(IndicesQualiteT('carbone',3,4), IndicesQualiteT('securite',5,4), IndicesQualiteT('prix',3,3)) );
insert into PIECE values (6, 'Raidisseur', 'en composite', 400);
insert into PIECE values (7, 'Raidisseur', 'en titane', 600);
insert into PIECE_COMPOSEE values (6);
insert into PIECE_COMPOSEE values (7);
insert into Composant values (2);
insert into Details values (7, 1, 10);
insert into Details values (7, 2, 14);
insert into Details values (6, 4, 8);
insert into Details values (6, 2, 8);
insert into Piece_Infos values (6, 'Raidisseur en composite', TO_DATE('2025/01/01',  'YYYY/MM/DD'),TO_DATE('2025/02/03',  'YYYY/MM/DD'), EquipeTab(EquipeT('Valin', 'Mecanicienne'), EquipeT('Akhtar', 'Inspectrice')), IndicesQualiteList(IndicesQualiteT('carbone',3,2), IndicesQualiteT('securite',5,4), IndicesQualiteT('prix',5,1)) );
insert into Piece_Infos values (7, 'Raidisseur en titane', TO_DATE('2024/09/12',  'YYYY/MM/DD'),TO_DATE('2024/10/14',  'YYYY/MM/DD'), EquipeTab(EquipeT('Valin', 'Mecanicienne'), EquipeT('Akhtar', 'Inspectrice')), IndicesQualiteList(IndicesQualiteT('carbone',1,4), IndicesQualiteT('securite',1,4), IndicesQualiteT('prix',3,3)) );

