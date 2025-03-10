
CREATE OR REPLACE TYPE EquipeT AS object(
    nom Varchar2(50),
    fonction Varchar2(50),
    member function get_nom RETURN Varchar2,
    member function get_fonction RETURN Varchar2
);

/
create or replace type BODY EquipeT AS
    member function get_nom RETURN varchar2 IS
    BEGIN
        return self.nom;
    END get_nom;
    member function get_fonction RETURN varchar2 IS
    BEGIN
        return self.fonction;
    END get_fonction;
END;
/
CREATE TYPE EquipeTab AS TABLE OF EquipeT;
/
CREATE OR REPLACE TYPE IndicesQualiteT AS OBJECT (
    IdType varchar2(20), poids1 number(1), poids2 number(1),
    member function get_idType return varchar2,
    member function get_poids1 return number,
    member function get_poids2 return number
);

/
CREATE OR REPLACE TYPE BODY IndicesQualiteT AS
    member function get_idType RETURN varchar2 IS
    BEGIN
        return self.IdType;
    END get_idType;
    member function get_poids1 RETURN number IS
    BEGIN
        return self.poids1;
    END get_poids1;
    member function get_poids2 RETURN number IS
    BEGIN
        return self.poids2;
    END get_poids2;
END;
/
CREATE TYPE IndicesQualiteList AS VARRAY(3) OF IndicesQualiteT;
/

CREATE TABLE Piece_Infos(
    idNumPiece number(10) not null,
    idNomPiece Varchar2(50) not null,
    dateDeb date,
    dateFin DATE,
    Equipe EquipeTab,
    IndicesQualite IndicesQualiteList,
    constraint PKidNumPiece PRIMARY KEY (idNumPiece)
)
nested table Equipe store as Equipe_nt;

ALTER TABLE Piece_Infos ADD CONSTRAINT FKIdNumPiece FOREIGN KEY (idNumPiece) REFERENCES PIECE(idPiece);

