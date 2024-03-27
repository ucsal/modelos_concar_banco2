CREATE TABLE Aglomerado_Rural (
  Localidade_Localidade SERIAL NOT NULL,
  Aglomerado_Rural SERIAL NOT NULL,
  idAglomerado POINT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(Localidade_Localidade, Aglomerado_Rural),
  INDEX Aglomerado_Rural_FKIndex1(Localidade_Localidade)
);

CREATE TABLE Aglomerado_Rural_de_Extencao_Urbana (
  Aglomerado_Rural_Localidade_Localidade SERIAL NOT NULL,
  Aglomerado_Rural_Aglomerado_Rural SERIAL NOT NULL,
  Aglomerado_Rural_de_Extencao_Urbana SERIAL NOT NULL,
  idAglomerado_Rural_de_Extencao_Urbana MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Aglomerado_Rural_Localidade_Localidade, Aglomerado_Rural_Aglomerado_Rural, Aglomerado_Rural_de_Extencao_Urbana),
  INDEX Aglomerado_Rural_de_Extencao_Urbana_FKIndex1(Aglomerado_Rural_Localidade_Localidade, Aglomerado_Rural_Aglomerado_Rural)
);

CREATE TABLE Aglomerado_Rural_Isolado (
  Aglomerado_Rural_Localidade_Localidade SERIAL NOT NULL,
  Aglomerado_Rural_Aglomerado_Rural SERIAL NOT NULL,
  Aglomerado_Rural_Isolado SERIAL NOT NULL,
  idAglomerado_Rural_Isolado MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Aglomerado_Rural_Localidade_Localidade, Aglomerado_Rural_Aglomerado_Rural, Aglomerado_Rural_Isolado),
  INDEX Aglomerado_Rural_Isolado_FKIndex1(Aglomerado_Rural_Localidade_Localidade, Aglomerado_Rural_Aglomerado_Rural)
);

CREATE TABLE Aldeia_Indigena (
  Aldeia_Indigena SERIAL NOT NULL,
  Complexo_Habitacional_Complexo_Habitacional SERIAL NOT NULL,
  idAldeia_Indigena POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Aldeia_Indigena, Complexo_Habitacional_Complexo_Habitacional),
  INDEX Aldeia_Indigena_FKIndex1(Complexo_Habitacional_Complexo_Habitacional)
);

CREATE TABLE Area_Edificada (
  Area_Edificada SERIAL NOT NULL,
  idArea_Edificada POLYGON NOT NULL AUTO_INCREMENT,
  Localidade_Localidade SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Edificada),
  INDEX Area_Edificada_FKIndex1(Localidade_Localidade)
);

CREATE TABLE Area_Habitacional (
  Area_Habitacional SERIAL NOT NULL,
  idArea_Habitacional POLYGON NOT NULL AUTO_INCREMENT,
  Complexo_Habitacional_Complexo_Habitacional SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Habitacional),
  INDEX Area_Habitacional_FKIndex1(Complexo_Habitacional_Complexo_Habitacional)
);

CREATE TABLE Area_Urbana_Isolada (
  Area_Urbana_Isolada SERIAL NOT NULL,
  Cidade_Localidade_Localidade SERIAL NOT NULL,
  Vila_Localidade_Localidade SERIAL NOT NULL,
  idArea_Urbana_Isolada MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Vila_Vila SERIAL NOT NULL,
  Cidade_Cidade SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Urbana_Isolada),
  INDEX Area_Urbana_Isolada_FKIndex1(Vila_Vila, Vila_Localidade_Localidade),
  INDEX Area_Urbana_Isolada_FKIndex2(Cidade_Cidade, Cidade_Localidade_Localidade)
);

CREATE TABLE Capital (
  Cidade_Cidade SERIAL NOT NULL,
  Capital SERIAL NOT NULL,
  Cidade_Localidade_Localidade SERIAL NOT NULL,
  idCapital MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Cidade_Cidade, Capital, Cidade_Localidade_Localidade),
  INDEX Capital_FKIndex1(Cidade_Cidade, Cidade_Localidade_Localidade)
);

CREATE TABLE Cidade (
  Cidade SERIAL NOT NULL,
  Localidade_Localidade SERIAL NOT NULL,
  idCidade MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Cidade, Localidade_Localidade),
  INDEX Cidade_FKIndex1(Localidade_Localidade)
);

CREATE TABLE Complexo_Habitacional (
  Complexo_Habitacional SERIAL NOT NULL,
  idComplexo_Habitacional MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Complexo_Habitacional)
);

CREATE TABLE Edif_Habitacional (
  Edif_Habitacional SERIAL NOT NULL,
  idEdif_Habitacional MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Habitacional_Complexo_Habitacional SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Habitacional),
  INDEX Edif_Habitacional_FKIndex1(Complexo_Habitacional_Complexo_Habitacional)
);

CREATE TABLE Hab_Indigena (
  Edif_Habitacional_Edif_Habitacional SERIAL NOT NULL,
  Hab_Indigena SERIAL NOT NULL,
  idHab_Indigena MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Habitacional_Edif_Habitacional, Hab_Indigena),
  INDEX Edif_Indigena_FKIndex1(Edif_Habitacional_Edif_Habitacional)
);

CREATE TABLE Localidade (
  Localidade SERIAL NOT NULL,
  idLocalidade POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Localidade)
);

CREATE TABLE Nome_Local (
  Nome_Local SERIAL NOT NULL,
  Localidade_Localidade SERIAL NOT NULL,
  idNome_Local POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Nome_Local),
  INDEX Nome_Local_FKIndex1(Localidade_Localidade)
);

CREATE TABLE Vila (
  Vila SERIAL NOT NULL,
  Localidade_Localidade SERIAL NOT NULL,
  idVila MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Vila, Localidade_Localidade),
  INDEX Vila_FKIndex1(Localidade_Localidade)
);


