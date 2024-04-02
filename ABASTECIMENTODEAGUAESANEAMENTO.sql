CREATE TABLE Area_Abast_Agua (
  Area_Abast_Agua SERIAL NOT NULL,
  Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  Complexo_Abast_Agua_Complexo_Abast_Agua SERIAL NOT NULL,
  idArea_Abast_Agua POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Abast_Agua),
  INDEX Area_Abast_Agua_FKIndex1(Complexo_Abast_Agua_Complexo_Abast_Agua, Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv)
);

CREATE TABLE Area_Saneamento (
  Area_Saneamento SERIAL NOT NULL,
  idArea_Saneamento POLYGON NOT NULL AUTO_INCREMENT,
  Complexo_Saneamento_Complexo_Saneamento SERIAL NOT NULL,
  Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Saneamento),
  INDEX Area_Saneamento_FKIndex1(Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv, Complexo_Saneamento_Complexo_Saneamento)
);

CREATE TABLE Cemiterio (
  Cemiterio SERIAL NOT NULL,
  idCemiterio MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Cemiterio)
);

CREATE TABLE Complexo_Abast_Agua (
  Complexo_Abast_Agua SERIAL NOT NULL,
  Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  idComplexo_Abast_Agua MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Complexo_Abast_Agua, Org_Comerc_Serv_Org_Comerc_Serv),
  INDEX Complexo_Abast_Agua_FKIndex1(Org_Comerc_Serv_Org_Comerc_Serv)
);

CREATE TABLE Complexo_Saneamento (
  Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  Complexo_Saneamento SERIAL NOT NULL,
  idComplexo_Saneamento MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 INTEGER UNSIGNED NULL,
  PRIMARY KEY(Org_Comerc_Serv_Org_Comerc_Serv, Complexo_Saneamento),
  INDEX Complexo_Saneamento_FKIndex1(Org_Comerc_Serv_Org_Comerc_Serv)
);

CREATE TABLE Dep_Abast_Agua (
  Dep_Abast_Agua SERIAL NOT NULL,
  Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  idDep_Abast_Agua MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Abast_Agua_Complexo_Abast_Agua SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Dep_Abast_Agua),
  INDEX Dep_Abast_Agua_FKIndex1(Complexo_Abast_Agua_Complexo_Abast_Agua, Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv)
);

CREATE TABLE Dep_Saneamento (
  Dep_Saneamento SERIAL NOT NULL,
  idDep_Saneamento MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Saneamento_Complexo_Saneamento SERIAL NOT NULL,
  Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Dep_Saneamento),
  INDEX Dep_Saneamento_FKIndex1(Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv, Complexo_Saneamento_Complexo_Saneamento)
);

CREATE TABLE Edif_Abast_Agua (
  Edif_Abast_Agua SERIAL NOT NULL,
  Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  idEdif_Abast_Agua MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Abast_Agua_Complexo_Abast_Agua SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Abast_Agua),
  INDEX Edif_Abast_Agua_FKIndex1(Complexo_Abast_Agua_Complexo_Abast_Agua, Complexo_Abast_Agua_Org_Comerc_Serv_Org_Comerc_Serv)
);

CREATE TABLE Edif_Saneamento (
  Edif_Saneamento SERIAL NOT NULL,
  idEdif_Saneamento MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Saneamento_Complexo_Saneamento SERIAL NOT NULL,
  Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Saneamento),
  INDEX Edif_Saneamento_FKIndex1(Complexo_Saneamento_Org_Comerc_Serv_Org_Comerc_Serv, Complexo_Saneamento_Complexo_Saneamento)
);

CREATE TABLE Org_Comerc_Serv (
  Org_Comerc_Serv SERIAL NOT NULL,
  idOrg_Comerc_Serv MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Comerc_Serv)
);

CREATE TABLE Trecho_Outro (
  Trecho_Outro SERIAL NOT NULL,
  Dep_Saneamento_Dep_Saneamento SERIAL NOT NULL,
  idTrecho_Outro LINESTRING NOT NULL AUTO_INCREMENT,
  Dep_Abast_Agua_Dep_Abast_Agua SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Outro),
  INDEX Trecho_Outro_FKIndex1(Dep_Abast_Agua_Dep_Abast_Agua),
  INDEX Trecho_Outro_FKIndex2(Dep_Saneamento_Dep_Saneamento)
);


