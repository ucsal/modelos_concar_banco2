CREATE SEQUENCE area_abast_agua_id_seq;

CREATE TABLE Area_Abast_Agua (
    Area_Abast_Agua SERIAL PRIMARY KEY,
    Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
    Complexo_Abast_Agua_Complexo_Abast_Agua SERIAL NOT NULL,
    idArea_Abast_Agua POLYGON NOT NULL,
    Desc_2 TEXT
);

CREATE INDEX Area_Abast_Agua_FKIndex1 ON Area_Abast_Agua (Complexo_Abast_Agua_Complexo_Abast_Agua, Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv);

CREATE SEQUENCE area_saneamento_id_seq;

CREATE TABLE Area_Saneamento (
    Area_Saneamento SERIAL PRIMARY KEY,
    idArea_Saneamento POLYGON NOT NULL,
    Complexo_Saneamento_Complexo_Saneamento SERIAL NOT NULL,
    Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
    Desc_2 TEXT
);

CREATE INDEX Area_Saneamento_FKIndex1 ON Area_Saneamento (Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv, Complexo_Saneamento_Complexo_Saneamento);

CREATE SEQUENCE cemiterio_id_seq;

CREATE TABLE Cemiterio (
    Cemiterio SERIAL PRIMARY KEY,
    idCemiterio MULTIPOINT NOT NULL,
    Desc_2 TEXT
);

CREATE SEQUENCE complexo_abast_agua_id_seq;

CREATE TABLE Complexo_Abast_Agua (
    Complexo_Abast_Agua SERIAL PRIMARY KEY,
    Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
    idComplexo_Abast_Agua MULTIPOLYGON NOT NULL,
    Desc_2 TEXT
);

CREATE INDEX Complexo_Abast_Agua_FKIndex1 ON Complexo_Abast_Agua (Org_Comerc_Serv_Org_Comerc_Serv);

CREATE SEQUENCE complexo_saneamento_id_seq;

CREATE TABLE Complexo_Saneamento (
    Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
    Complexo_Saneamento SERIAL NOT NULL,
    idComplexo_Saneamento MULTIPOLYGON NOT NULL,
    Desc_2 INTEGER NULL,
    PRIMARY KEY(Org_Comerc_Serv_Org_Comerc_Serv, Complexo_Saneamento)
);

CREATE INDEX Complexo_Saneamento_FKIndex1 ON Complexo_Saneamento (Org_Comerc_Serv_Org_Comerc_Serv);

CREATE SEQUENCE dep_abast_agua_id_seq;

CREATE TABLE Dep_Abast_Agua (
    Dep_Abast_Agua SERIAL PRIMARY KEY,
    Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
    idDep_Abast_Agua MULTIPOINT NOT NULL,
    Complexo_Abast_Agua_Complexo_Abast_Agua SERIAL NOT NULL,
    Desc_2 TEXT
);

CREATE INDEX Dep_Abast_Agua_FKIndex1 ON Dep_Abast_Agua (Complexo_Abast_Agua_Complexo_Abast_Agua, Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv);

CREATE SEQUENCE dep_saneamento_id_seq;

CREATE TABLE Dep_Saneamento (
    Dep_Saneamento SERIAL PRIMARY KEY,
    idDep_Saneamento MULTIPOINT NOT NULL,
    Complexo_Saneamento_Complexo_Saneamento SERIAL NOT NULL,
    Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
    Desc_2 TEXT
);

CREATE INDEX Dep_Saneamento_FKIndex1 ON Dep_Saneamento (Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv, Complexo_Saneamento_Complexo_Saneamento);

CREATE SEQUENCE edif_abast_agua_id_seq;

CREATE TABLE Edif_Abast_Agua (
    Edif_Abast_Agua SERIAL PRIMARY KEY,
    Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
    idEdif_Abast_Agua MULTIPOINT NOT NULL,
    Complexo_Abast_Agua_Complexo_Abast_Agua SERIAL NOT NULL,
    Desc_2 TEXT
);

CREATE INDEX Edif_Abast_Agua_FKIndex1 ON Edif_Abast_Agua (Complexo_Abast_Agua_Complexo_Abast_Agua, Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv);

CREATE SEQUENCE edif_saneamento_id_seq;

CREATE TABLE Edif_Saneamento (
    Edif_Saneamento SERIAL PRIMARY KEY,
    idEdif_Saneamento MULTIPOINT NOT NULL,
    Complexo_Saneamento_Complexo_Saneamento SERIAL NOT NULL,
    Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
    Desc_2 TEXT
);

CREATE INDEX Edif_Saneamento_FKIndex1 ON Edif_Saneamento (Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv, Complexo_Saneamento_Complexo_Saneamento);

CREATE SEQUENCE org_comerc_serv_id_seq;

CREATE TABLE Org_Comerc_Serv (
    Org_Comerc_Serv SERIAL PRIMARY KEY,
    idOrg_Comerc_Serv MULTIPOLYGON NOT NULL,
    Desc_2 TEXT
);

CREATE SEQUENCE trecho_outro_id_seq;

CREATE TABLE Trecho_Outro (
    Trecho_Outro SERIAL PRIMARY KEY,
    Dep_Saneamento_Dep_Saneamento SERIAL NOT NULL,
    idTrecho_Outro LINESTRING NOT NULL,
    Dep_Abast_Agua_Dep_Abast_Agua SERIAL NOT NULL,
    Desc_2 TEXT
);

CREATE INDEX Trecho_Outro_FKIndex1 ON Trecho_Outro (Dep_Abast_Agua_Dep_Abast_Agua);
CREATE INDEX Trecho_Outro_FKIndex2 ON Trecho_Outro (Dep_Saneamento_Dep_Saneamento);