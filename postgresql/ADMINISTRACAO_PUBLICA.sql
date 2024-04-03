CREATE SEQUENCE area_pub_civil_id_seq;

CREATE TABLE Area_Pub_Civil (
  Area_Pub_Civil SERIAL PRIMARY KEY,
  idArea_Pub_Civil POLYGON NOT NULL,
  Desc_2 TEXT
);

CREATE SEQUENCE area_pub_militar_id_seq;

CREATE TABLE Area_Pub_Militar (
  Area_Pub_Militar SERIAL PRIMARY KEY,
  Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  idArea_Pub_Militar POLYGON NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Org_Pub_Militar_Org_Pub_Militar) REFERENCES Org_Pub_Militar(Org_Pub_Militar)
);

CREATE SEQUENCE edif_pub_civil_id_seq;

CREATE TABLE Edif_Pub_Civil (
  Edif_Pub_Civil SERIAL PRIMARY KEY,
  idEdit_Pub_Civil POINT[] NOT NULL,
  Desc_2 TEXT
);

CREATE SEQUENCE edif_pub_militar_id_seq;

CREATE TABLE Edif_Pub_Militar (
  Edif_Pub_Militar SERIAL PRIMARY KEY,
  idEdif_Pub_Militar POLYGON[] NOT NULL,
  Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Org_Pub_Militar_Org_Pub_Militar) REFERENCES Org_Pub_Militar(Org_Pub_Militar)
);

CREATE SEQUENCE instituicoes_publicas_id_seq;

CREATE TABLE Instituicoes_Publicas (
  Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Instituicoes_Publicas SERIAL NOT NULL,
  idInstituicoes_Publicas POLYGON[] NOT NULL,
  Desc_2 TEXT,
  PRIMARY KEY(Org_Pub_Civil_Org_Pub_Civil, Instituicoes_Publicas),
  FOREIGN KEY (Org_Pub_Civil_Org_Pub_Civil) REFERENCES Org_Pub_Civil(Org_Pub_Civil)
);

CREATE SEQUENCE org_industrial_id_seq;

CREATE TABLE Org_Industrial (
  Org_Industrial SERIAL PRIMARY KEY,
  Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  idOrg_Industrial POLYGON[] NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Org_Pub_Civil_Org_Pub_Civil) REFERENCES Org_Pub_Civil(Org_Pub_Civil),
  FOREIGN KEY (Org_Pub_Militar_Org_Pub_Militar) REFERENCES Org_Pub_Militar(Org_Pub_Militar)
);

CREATE SEQUENCE org_pub_civil_id_seq;

CREATE TABLE Org_Pub_Civil (
  Org_Pub_Civil SERIAL PRIMARY KEY,
  Edif_Pub_Civil_Edif_Pub_Civil SERIAL NOT NULL,
  idOrg_Pub_Civil POLYGON[] NOT NULL,
  Area_Pub_Civil_Area_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Edif_Pub_Civil_Edif_Pub_Civil) REFERENCES Edif_Pub_Civil(Edif_Pub_Civil),
  FOREIGN KEY (Area_Pub_Civil_Area_Pub_Civil) REFERENCES Area_Pub_Civil(Area_Pub_Civil)
);

CREATE SEQUENCE org_pub_militar_id_seq;

CREATE TABLE Org_Pub_Militar (
  Org_Pub_Militar SERIAL PRIMARY KEY,
  idOrg_Pub_Militar POLYGON[] NOT NULL,
  Instituicoes_Publicas_Instituicoes_Publicas SERIAL NOT NULL,
  Instituicoes_Publicas_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Instituicoes_Publicas_Org_Pub_Civil_Org_Pub_Civil, Instituicoes_Publicas_Instituicoes_Publicas) REFERENCES Instituicoes_Publicas(Org_Pub_Civil_Org_Pub_Civil, Instituicoes_Publicas)
);

CREATE SEQUENCE posto_fiscal_id_seq;

CREATE TABLE Posto_Fiscal (
  Edif_Pub_Civil_Edif_Pub_Civil SERIAL NOT NULL,
  Posto_Fiscal SERIAL PRIMARY KEY,
  idPosto_Fiscal POINT[] NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Edif_Pub_Civil_Edif_Pub_Civil) REFERENCES Edif_Pub_Civil(Edif_Pub_Civil)
);

CREATE SEQUENCE posto_pol_rod_id_seq;

CREATE TABLE Posto_Pol_Rod (
  Edif_Pub_Civil_Edif_Pub_Civil SERIAL NOT NULL,
  Posto_Pol_Rod SERIAL PRIMARY KEY,
  Edif_Pub_Militar_Edif_Pub_Militar SERIAL NOT NULL,
  idPosto_Pol_Rod POLYGON[] NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Edif_Pub_Civil_Edif_Pub_Civil) REFERENCES Edif_Pub_Civil(Edif_Pub_Civil),
  FOREIGN KEY (Edif_Pub_Militar_Edif_Pub_Militar) REFERENCES Edif_Pub_Militar(Edif_Pub_Militar)
);