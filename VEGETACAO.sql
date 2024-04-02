CREATE TABLE Area_Agropac_Ext_Vegetal_Pesca (
  Area_Agropac_Ext_Vegetal_Pesca SERIAL NOT NULL,
  idArea_Agropac_Ext_Vegetal_Pesca POLYGON NOT NULL AUTO_INCREMENT,
  Vegetacao_Vegetacao SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Agropac_Ext_Vegetal_Pesca),
  INDEX Area_Agropac_Ext_Vegetal_Pesca_FKIndex1(Vegetacao_Vegetacao)
);

CREATE TABLE Area_Umida (
  Area_Umida SERIAL NOT NULL,
  Veg_Cultivada_Veg_Cultivada SERIAL NOT NULL,
  Brejo_Pantano_Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Veg_Cultivada_Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Brejo_Pantano_Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Brejo_Pantano_Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Cultivada_Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  idArea_Umida POLYGON NOT NULL AUTO_INCREMENT,
  Brejo_Pantano_Brejo_Pantano SERIAL NOT NULL,
  Brejo_Pantano_Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Umida),
  INDEX Area_Umida_FKIndex1(Veg_Cultivada_Veg_Antropizada_Vegetacao_Vegetacao, Veg_Cultivada_Veg_Antropizada_Veg_Antropizada, Veg_Cultivada_Veg_Cultivada),
  INDEX Area_Umida_FKIndex2(Brejo_Pantano_Veg_Natural_Veg_Natural, Brejo_Pantano_Brejo_Pantano, Brejo_Pantano_Veg_Natural_Vegetacao_Vegetacao, Brejo_Pantano_Veg_Antropizada_Vegetacao_Vegetacao, Brejo_Pantano_Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Banco_Areia (
  Banco_Areia SERIAL NOT NULL,
  idBanco_Areia POLYGON NOT NULL AUTO_INCREMENT,
  Veg_Restinga_Veg_Restinga SERIAL NOT NULL,
  Veg_Restinga_Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Veg_Restinga_Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Restinga_Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Restinga_Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Banco_Areia),
  INDEX Banco_Areia_FKIndex1(Veg_Restinga_Veg_Natural_Veg_Natural, Veg_Restinga_Veg_Natural_Vegetacao_Vegetacao, Veg_Restinga_Veg_Antropizada_Vegetacao_Vegetacao, Veg_Restinga_Veg_Antropizada_Veg_Antropizada, Veg_Restinga_Veg_Restinga)
);

CREATE TABLE Brejo_Pantano (
  Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Brejo_Pantano SERIAL NOT NULL,
  Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  idBrejo_Pantano POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Natural_Veg_Natural, Brejo_Pantano, Veg_Natural_Vegetacao_Vegetacao, Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada),
  INDEX Brejo_Pantano_FKIndex1(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao),
  INDEX Brejo_Pantano_FKIndex2(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Caatinga (
  Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Caatinga SERIAL NOT NULL,
  idCaatinga POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao, Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada, Caatinga),
  INDEX Caatinga_FKIndex1(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao),
  INDEX Caatinga_FKIndex2(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Campinarama (
  Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Campinarama SERIAL NOT NULL,
  idCampinarama POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao, Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada, Campinarama),
  INDEX Campinarama_FKIndex1(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao),
  INDEX Campinarama_FKIndex2(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Campo (
  Campo SERIAL NOT NULL,
  Vegetacao_Vegetacao SERIAL NOT NULL,
  idCampo POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Campo),
  INDEX Campo_FKIndex1(Vegetacao_Vegetacao)
);

CREATE TABLE Cerrado_Cerradao (
  Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Cerrado_Cerradao SERIAL NOT NULL,
  Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  idCerrado_Cerradao POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Natural_Veg_Natural, Cerrado_Cerradao, Veg_Natural_Vegetacao_Vegetacao, Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada),
  INDEX Cerrado_Cerradao_FKIndex1(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao),
  INDEX Cerrado_Cerradao_FKIndex2(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Equip_Agropec (
  Equip_Agropec SERIAL NOT NULL,
  idEquip_Agropec MULTIPOINT NOT NULL AUTO_INCREMENT,
  Veg_Cultivada_Veg_Cultivada SERIAL NOT NULL,
  Veg_Cultivada_Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Veg_Cultivada_Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Equip_Agropec),
  INDEX Equip_Agropec_FKIndex1(Veg_Cultivada_Veg_Antropizada_Vegetacao_Vegetacao, Veg_Cultivada_Veg_Antropizada_Veg_Antropizada, Veg_Cultivada_Veg_Cultivada)
);

CREATE TABLE Estepe (
  Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Estepe SERIAL NOT NULL,
  idEstepe POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao, Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada, Estepe),
  INDEX Estepe_FKIndex1(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao),
  INDEX Estepe_FKIndex2(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Floresta (
  Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Floresta SERIAL NOT NULL,
  Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  idFloresta POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Natural_Veg_Natural, Floresta, Veg_Natural_Vegetacao_Vegetacao, Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada),
  INDEX Floresta_FKIndex1(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao),
  INDEX Floresta_FKIndex2(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Macega_Chavascal (
  Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Macega_Chavascal SERIAL NOT NULL,
  idMacega_Chavascal POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao, Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada, Macega_Chavascal),
  INDEX Macega_Chavascal_FKIndex1(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao),
  INDEX Macega_Chavascal_FKIndex2(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Mangue (
  Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Mangue INTEGER UNSIGNED NOT NULL,
  Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  idMangue POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Natural_Veg_Natural, Mangue, Veg_Natural_Vegetacao_Vegetacao, Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada),
  INDEX Mangue_FKIndex1(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao),
  INDEX Mangue_FKIndex2(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Terreno_Sujeito_Inundacao (
  Terreno_Sujeito_Inundacao SERIAL NOT NULL,
  Mangue_Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Mangue_Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Mangue_Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  idTerreno_Sujeito_Inundacao POLYGON NOT NULL AUTO_INCREMENT,
  Mangue_Mangue INTEGER UNSIGNED NOT NULL,
  Mangue_Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Terreno_Sujeito_Inundacao),
  INDEX Terreno_Sujeito_Inundacao_FKIndex1(Mangue_Veg_Natural_Veg_Natural, Mangue_Mangue, Mangue_Veg_Natural_Vegetacao_Vegetacao, Mangue_Veg_Antropizada_Vegetacao_Vegetacao, Mangue_Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Vegetacao (
  Vegetacao SERIAL NOT NULL,
  idVegetacao POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Vegetacao)
);

CREATE TABLE Veg_Antropizada (
  Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada SERIAL NOT NULL,
  idVeg_Antropizada POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Vegetacao_Vegetacao, Veg_Antropizada),
  INDEX Veg_Antropizada_FKIndex1(Vegetacao_Vegetacao)
);

CREATE TABLE Veg_Area_Contato (
  Veg_Area_Contato SERIAL NOT NULL,
  Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  idVeg_Area_Contato POLYGON NOT NULL AUTO_INCREMENT,
  Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Area_Contato, Vegetacao_Vegetacao),
  INDEX Veg_Area_Contato_FKIndex1(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao),
  INDEX Veg_Area_Contato_FKIndex2(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada),
  INDEX Veg_Area_Contato_FKIndex3(Vegetacao_Vegetacao)
);

CREATE TABLE Veg_Cultivada (
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Veg_Cultivada SERIAL NOT NULL,
  idVeg_Cultivada POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada, Veg_Cultivada),
  INDEX Veg_Cultivada_FKIndex1(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada)
);

CREATE TABLE Veg_Natural (
  Veg_Natural SERIAL NOT NULL,
  Vegetacao_Vegetacao SERIAL NOT NULL,
  idVeg_Natural POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Natural, Vegetacao_Vegetacao),
  INDEX Veg_Natural_FKIndex1(Vegetacao_Vegetacao)
);

CREATE TABLE Veg_Restinga (
  Veg_Natural_Veg_Natural SERIAL NOT NULL,
  Veg_Natural_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Vegetacao_Vegetacao SERIAL NOT NULL,
  Veg_Antropizada_Veg_Antropizada SERIAL NOT NULL,
  Veg_Restinga SERIAL NOT NULL,
  idVeg_Restinga POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao, Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada, Veg_Restinga),
  INDEX Veg_Restinga_FKIndex1(Veg_Natural_Veg_Natural, Veg_Natural_Vegetacao_Vegetacao),
  INDEX Veg_Restinga_FKIndex2(Veg_Antropizada_Vegetacao_Vegetacao, Veg_Antropizada_Veg_Antropizada)
);


