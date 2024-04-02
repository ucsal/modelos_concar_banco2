CREATE TABLE Area_Pub_Civil (
  Area_Pub_Civil SERIAL NOT NULL,
  idArea_Pub_Civil POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Pub_Civil)
);

CREATE TABLE Area_Pub_Militar (
  Area_Pub_Militar SERIAL NOT NULL,
  Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  idArea_Pub_Militar POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Pub_Militar),
  INDEX Area_Pub_Militar_FKIndex1(Org_Pub_Militar_Org_Pub_Militar)
);

CREATE TABLE Edif_Pub_Civil (
  Edif_Pub_Civil SERIAL NOT NULL,
  idEdit_Pub_Civil MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Pub_Civil)
);

CREATE TABLE Edif_Pub_Militar (
  Edif_Pub_Militar SERIAL NOT NULL,
  idEdif_Pub_Militar MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Pub_Militar),
  INDEX Edif_Pub_Militar_FKIndex1(Org_Pub_Militar_Org_Pub_Militar)
);

CREATE TABLE Instituicoes_Publicas (
  Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Instituicoes_Publicas SERIAL NOT NULL,
  idInstituicoes_Publicas MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Pub_Civil_Org_Pub_Civil, Instituicoes_Publicas),
  INDEX INstituicoes_Publicas_FKIndex1(Org_Pub_Civil_Org_Pub_Civil)
);

CREATE TABLE Org_Industrial (
  Org_Industrial SERIAL NOT NULL,
  Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  idOrg_Industrial MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Industrial, Org_Pub_Civil_Org_Pub_Civil, Org_Pub_Militar_Org_Pub_Militar),
  INDEX Org_Industrial_FKIndex1(Org_Pub_Civil_Org_Pub_Civil),
  INDEX Org_Industrial_FKIndex2(Org_Pub_Militar_Org_Pub_Militar)
);

CREATE TABLE Org_Pub_Civil (
  Org_Pub_Civil SERIAL NOT NULL,
  Edif_Pub_Civil_Edif_Pub_Civil SERIAL NOT NULL,
  idOrg_Pub_Civil MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Area_Pub_Civil_Area_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Pub_Civil),
  INDEX Org_Pub_Civil_FKIndex1(Area_Pub_Civil_Area_Pub_Civil),
  INDEX Org_Pub_Civil_FKIndex2(Edif_Pub_Civil_Edif_Pub_Civil)
);

CREATE TABLE Org_Pub_Militar (
  Org_Pub_Militar SERIAL NOT NULL,
  idOrg_Pub_Militar MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Instituicoes_Publicas_Instituicoes_Publicas SERIAL NOT NULL,
  Instituicoes_Publicas_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Pub_Militar),
  INDEX Org_Pub_Militar_FKIndex1(Instituicoes_Publicas_Org_Pub_Civil_Org_Pub_Civil, Instituicoes_Publicas_Instituicoes_Publicas)
);

CREATE TABLE Posto_Fiscal (
  Edif_Pub_Civil_Edif_Pub_Civil SERIAL NOT NULL,
  Posto_Fiscal SERIAL NOT NULL,
  idPosto_Fiscal MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Pub_Civil_Edif_Pub_Civil, Posto_Fiscal),
  INDEX Posto_Fiscal_FKIndex1(Edif_Pub_Civil_Edif_Pub_Civil)
);

CREATE TABLE Posto_Pol_Rod (
  Edif_Pub_Civil_Edif_Pub_Civil SERIAL NOT NULL,
  Posto_Pol_Rod SERIAL NOT NULL,
  Edif_Pub_Militar_Edif_Pub_Militar SERIAL NOT NULL,
  idPosto_Pol_Rod MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Pub_Civil_Edif_Pub_Civil, Posto_Pol_Rod, Edif_Pub_Militar_Edif_Pub_Militar),
  INDEX Posto_Pol_Rod_FKIndex1(Edif_Pub_Civil_Edif_Pub_Civil),
  INDEX Posto_Pol_Rod_FKIndex2(Edif_Pub_Militar_Edif_Pub_Militar)
);


