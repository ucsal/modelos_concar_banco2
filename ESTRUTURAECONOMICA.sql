CREATE TABLE Area_Agropec_Est_Vegetal_Pesca (
  Area_Agropec_Est_Vegetal_Pesca SERIAL NOT NULL,
  Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca SERIAL NOT NULL,
  idArea_Agropec_Est_Vegetal_Pesca POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Agropec_Est_Vegetal_Pesca),
  INDEX Area_Agropec_Est_Vegetal_Pesca_FKIndex1(Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca)
);

CREATE TABLE Area_Comerc_Serv (
  Area_Comerc_Serv SERIAL NOT NULL,
  idArea_Comerc_Serv POLYGON NOT NULL AUTO_INCREMENT,
  Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Comerc_Serv),
  INDEX Area_Comerc_Serv_FKIndex1(Org_Comerc_Serv_Org_Comerc_Serv)
);

CREATE TABLE Area_Ext_Mineral (
  Area_Ext_Mineral SERIAL NOT NULL,
  idArea_Ext_Mineral POLYGON NOT NULL AUTO_INCREMENT,
  Org_Ext_Mineral_Org_Ext_Mineral SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Ext_Mineral),
  INDEX Area_Ext_Mineral_FKIndex1(Org_Ext_Mineral_Org_Ext_Mineral)
);

CREATE TABLE Area_Industrial (
  Area_Industrial SERIAL NOT NULL,
  Org_Industrial_Org_Industrial SERIAL NOT NULL,
  idArea_Industrial POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Industrial),
  INDEX Area_Industrial_FKIndex1(Org_Industrial_Org_Industrial)
);

CREATE TABLE Caminho_Aereo (
  Caminho_Aereo SERIAL NOT NULL,
  idCaminho_Aereo LINESTRING NOT NULL AUTO_INCREMENT,
  Org_Ext_Mineral_Org_Ext_Mineral SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Caminho_Aereo),
  INDEX Caminho_Aereo_FKIndex1(Org_Ext_Mineral_Org_Ext_Mineral)
);

CREATE TABLE Deposito_Geral (
  Deposito_Geral SERIAL NOT NULL,
  Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca SERIAL NOT NULL,
  Org_Industrial_Org_Industrial SERIAL NOT NULL,
  idDeposito_Geral MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Deposito_Geral),
  INDEX Deposito_Geral_FKIndex1(Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca),
  INDEX Deposito_Geral_FKIndex2(Org_Industrial_Org_Industrial)
);

CREATE TABLE Dep_Abast_Agua (
  Dep_Abast_Agua SERIAL NOT NULL,
  Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca SERIAL NOT NULL,
  Org_Industrial_Org_Industrial SERIAL NOT NULL,
  idDep_Abast_Agua MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Ext_Mineral_Org_Ext_Mineral SERIAL NOT NULL,
  Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Dep_Abast_Agua),
  INDEX Dep_Abast_Agua_FKIndex1(Org_Comerc_Serv_Org_Comerc_Serv),
  INDEX Dep_Abast_Agua_FKIndex2(Org_Ext_Mineral_Org_Ext_Mineral),
  INDEX Dep_Abast_Agua_FKIndex3(Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca),
  INDEX Dep_Abast_Agua_FKIndex4(Org_Industrial_Org_Industrial)
);

CREATE TABLE Edif_Agropec_Ext_Vegetal_Pesca (
  Edif_Agropec_Ext_Vegetal_Pesca SERIAL NOT NULL,
  Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca SERIAL NOT NULL,
  idEdif_Agropec_Ext_Vegetal_Pesca MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Agropec_Ext_Vegetal_Pesca),
  INDEX Edif_Agropec_Ext_Vegetal_Pesca_FKIndex1(Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca)
);

CREATE TABLE Edif_Comerc_Serv (
  Edif_Comerc_Serv SERIAL NOT NULL,
  idEdif_Comerc_Serv MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Comerc_Serv),
  INDEX Edif_Comerc_Serv_FKIndex1(Org_Comerc_Serv_Org_Comerc_Serv)
);

CREATE TABLE Edif_Ext_Mineral (
  Edif_Ext_Mineral SERIAL NOT NULL,
  idEdif_Ext_Mineral MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Ext_Mineral_Org_Ext_Mineral SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Ext_Mineral),
  INDEX Edif_Ext_Mineral_FKIndex1(Org_Ext_Mineral_Org_Ext_Mineral)
);

CREATE TABLE Edif_Industrial (
  Edif_Industrial SERIAL NOT NULL,
  idEdif_Industrial MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Industrial_Org_Industrial SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Industrial),
  INDEX Edif_Industrial_FKIndex1(Org_Industrial_Org_Industrial)
);

CREATE TABLE Equip_Agropec (
  Equip_Agropec SERIAL NOT NULL,
  idEquip_Agropec MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Equip_Agropec),
  INDEX Equip_Agropec_FKIndex1(Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca)
);

CREATE TABLE Ext_Mineral (
  Ext_Mineral SERIAL NOT NULL,
  Terreno_Exposto_Terreno_Exposto SERIAL NOT NULL,
  idExt_Mineral MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Ext_Mineral_Org_Ext_Mineral SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ext_Mineral),
  INDEX Ext_Mineral_FKIndex1(Org_Ext_Mineral_Org_Ext_Mineral),
  INDEX Ext_Mineral_FKIndex2(Terreno_Exposto_Terreno_Exposto)
);

CREATE TABLE Frigorifico_Matadouro (
  Org_Industrial_Org_Industrial SERIAL NOT NULL,
  Frigorifico_Matadouro SERIAL NOT NULL,
  Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca SERIAL NOT NULL,
  idFrigorifico_Matadouro MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Industrial_Org_Industrial, Frigorifico_Matadouro, Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca),
  INDEX Frigorifico_Matadouro_FKIndex1(Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca),
  INDEX Frigorifico_Matadouro_FKIndex2(Org_Industrial_Org_Industrial)
);

CREATE TABLE Funicular (
  Funicular SERIAL NOT NULL,
  Org_Ext_Mineral_Org_Ext_Mineral SERIAL NOT NULL,
  idFunicular MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Funicular),
  INDEX Funicular_FKIndex1(Org_Ext_Mineral_Org_Ext_Mineral)
);

CREATE TABLE Madereira (
  Org_Industrial_Org_Industrial SERIAL NOT NULL,
  Madereira SERIAL NOT NULL,
  Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca SERIAL NOT NULL,
  idMadereira MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Industrial_Org_Industrial, Madereira, Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca),
  INDEX Madereira_FKIndex1(Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca),
  INDEX Madereira_FKIndex2(Org_Industrial_Org_Industrial)
);

CREATE TABLE Org_Agropec_Ext_Vegetal_Pesca (
  Org_Agropec_Ext_Vegetal_Pesca SERIAL NOT NULL,
  idOrg_Agropec_Ext_Vegetal_Pesca MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Agropec_Ext_Vegetal_Pesca)
);

CREATE TABLE Org_Comerc_Serv (
  Org_Comerc_Serv SERIAL NOT NULL,
  idOrg_Comerc_Serv MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Comerc_Serv)
);

CREATE TABLE Org_Ext_Mineral (
  Org_Ext_Mineral SERIAL NOT NULL,
  idOrg_Ext_Mineral MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Ext_Mineral),
  INDEX Org_Ext_Mineral_FKIndex1(Org_Comerc_Serv_Org_Comerc_Serv)
);

CREATE TABLE Org_Industrial (
  Org_Industrial SERIAL NOT NULL,
  idOrg_Industrial MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Industrial)
);

CREATE TABLE Patio (
  Patio SERIAL NOT NULL,
  Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca SERIAL NOT NULL,
  Org_Industrial_Org_Industrial SERIAL NOT NULL,
  idPatio MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Ext_Mineral_Org_Ext_Mineral SERIAL NOT NULL,
  Org_Comerc_Serv_Org_Comerc_Serv SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Patio),
  INDEX Patio_FKIndex1(Org_Comerc_Serv_Org_Comerc_Serv),
  INDEX Patio_FKIndex2(Org_Ext_Mineral_Org_Ext_Mineral),
  INDEX Patio_FKIndex3(Org_Industrial_Org_Industrial),
  INDEX Patio_FKIndex4(Org_Agropec_Ext_Vegetal_Pesca_Org_Agropec_Ext_Vegetal_Pesca)
);

CREATE TABLE Plataforma (
  Plataforma SERIAL NOT NULL,
  idPlataforma MULTIPOINT NOT NULL AUTO_INCREMENT,
  Ext_Mineral_Ext_Mineral SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Plataforma),
  INDEX Plataforma_FKIndex1(Ext_Mineral_Ext_Mineral)
);

CREATE TABLE Terreno_Exposto (
  Terreno_Exposto SERIAL NOT NULL,
  idTerreno_Exposto POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Terreno_Exposto)
);


