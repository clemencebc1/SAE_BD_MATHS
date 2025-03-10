-- Pour chaque pi`ece, donnez le nombre de personnes de l’´equipe, par fonction.
select count(e.fonction) num, p.idnomPiece, e.fonction from Piece_Infos p, table (p.Equipe) e group by e.fonction,p.idNomPiece;

-- Pour chaque m´ecanicien, indiquez combien des pi`eces lui sont associ´ees.

select count(p.idNumPiece), e.get_nom() from Piece_Infos p, table (p.Equipe) e where e.fonction = 'Mecanicienne' group by e.get_nom();

-- L’impact d’un indice de qualit´e est donn´e par le produit de sa valeur et du poids que lui est attribu´e. Pour chaque pi`ece, indiquez l’impact de chaque indice de qualit´e.
select p.idnomPiece, (iq.poids1*iq.poids2) impact, iq.idType from Piece_Infos p, table (p.IndicesQualite) iq order by impact;

--  Pour chaque indice de qualit´e, calculez son impact moyen.
select p.idnomPiece, avg(iq.poids1*iq.poids2) impact from Piece_Infos p, table (p.IndicesQualite) iq group by p.idnomPiece;

