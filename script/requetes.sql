-- Listez tous les noms pi`eces qui sont des composants directs d’une pi`ece compos´ee sp´ecifique (ex : ”Panneau de fuselage”) avec leur quantit´e.
select distinct idPieceSimple, quantite from PIECE_SIMPLE p1 natural join Details where p1.idPieceSimple = idDetailsComp and idDetailsComp in (select idPieceSimple from PIECE_SIMPLE);
-- affiche le nom de la piece composee et pas celle simple

-- Listez les pi`eces compos´ees tri´ees par le nombre de composants qu’elles contiennent.
select count(d1.idDetailsComp) nbComposants, nomPiece from Details d1 natural join PIECE where idPiece = d1.idDetailsPiece group by d1.idDetailsPiece, nomPiece;

-- Comptez combien de pi`eces compos´ees existent dans la base.
select count(idPieceComposee) nbPieceComp from PIECE_COMPOSEE;

-- Calculez le coˆut total de chaque pi`ece compos´ee en additionnant le prix de ses composants directs.
select distinct sum(prix) from PIECE_SIMPLE p1 natural join Details natural join PIECE where idPiece = idPieceSimple and p1.idPieceSimple = idDetailsComp and idDetailsComp in (select idPieceSimple from PIECE_SIMPLE);
