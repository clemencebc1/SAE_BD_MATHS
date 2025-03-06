-- create DATABASE PRODUCTION;

create or replace type Details as object (
    idComposant number(10),
    quantite number(7),
    member function get_idComp return number,
    member function get_quantite return number
);
/
create or replace type BODY Details AS
    member function get_idComp RETURN number IS
    BEGIN
    return SELF.idComposant;
    END get_idComp;

    member function get_quantite RETURN number IS
    BEGIN
    return SELF.quantite;
    END;
END;
/
CREATE TYPE DetailsList AS VARRAY(200) OF Details;
/
CREATE TABLE PIECE (
    idPiece number(10) not null,
    nomPiece Varchar2(50),
    descriptionPiece Varchar2(100),
    constraint PKidPiece PRIMARY KEY (idPiece)
);

CREATE TABLE PIECE_SIMPLE(
    idPieceSimple number(10),
    constraint PKidPieceSimple PRIMARY KEY (idPieceSimple)
);

CREATE TABLE PIECE_COMPOSEE (
    idPieceComposee number(10) not null,
    detailsPiece DetailsList,
    constraint PKidPieceComp PRIMARY KEY (idPieceComposee)
);

ALTER TABLE PIECE_SIMPLE ADD CONSTRAINT FKidPieceSimp FOREIGN KEY (idPieceSimple) REFERENCES PIECE(idPiece);

ALTER TABLE PIECE_COMPOSEE ADD CONSTRAINT FKidPieceComp FOREIGN KEY (idPieceComposee) REFERENCES PIECE(idPiece);
