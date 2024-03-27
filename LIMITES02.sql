CREATE TABLE Aldeia_Indigena (
  Aldeia_Indigena SERIAL NOT NULL,
  idAldeia_Indigena MULTIPOINT NOT NULL AUTO_INCREMENT,
  Terra_Indiginena_Terra_Indiginena SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Aldeia_Indigena),
  INDEX Aldeia_Indigena_FKIndex1(Terra_Indiginena_Terra_Indiginena)
);

CREATE TABLE Area_Desenvolvimento_Controle (
  Area_Especial_Area_Especial SERIAL NOT NULL,
  Area_Desenvolvimento_Controle SERIAL NOT NULL,
  idArea_Desenvolvimento_Controle MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Especial_Area_Especial, Area_Desenvolvimento_Controle),
  INDEX Area_Desenvolvimento_Controle_FKIndex1(Area_Especial_Area_Especial)
);

CREATE TABLE Area_Especial (
  Area_Especial SERIAL NOT NULL,
  idArea_Especial POINT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(Area_Especial)
);

CREATE TABLE Area_Pub_Civil (
  Terra_Publica_Terra_Publica SERIAL NOT NULL,
  Area_Pub_Civil SERIAL NOT NULL,
  Terra_Publica_Area_Especial_Area_Especial SERIAL NOT NULL,
  idArea_Pub_Civil POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Terra_Publica_Terra_Publica, Area_Pub_Civil, Terra_Publica_Area_Especial_Area_Especial),
  INDEX Area_Pub_Civil_FKIndex1(Terra_Publica_Terra_Publica, Terra_Publica_Area_Especial_Area_Especial)
);

CREATE TABLE Area_Pub_Militar (
  Terra_Publica_Terra_Publica SERIAL NOT NULL,
  Area_Pub_Militar SERIAL NOT NULL,
  Terra_Publica_Area_Especial_Area_Especial SERIAL NOT NULL,
  idArea_Pub_Militar POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Terra_Publica_Terra_Publica, Area_Pub_Militar, Terra_Publica_Area_Especial_Area_Especial),
  INDEX Area_Pub_Militar_FKIndex1(Terra_Publica_Terra_Publica, Terra_Publica_Area_Especial_Area_Especial)
);

CREATE TABLE Area_Uso_Comunitario (
  Area_Especial_Area_Especial SERIAL NOT NULL,
  Area_Uso_Comunitario SERIAL NOT NULL,
  Terra_Indiginena_Terra_Indiginena SERIAL NOT NULL,
  idArea_Uso_Comunitario MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Especial_Area_Especial, Area_Uso_Comunitario, Terra_Indiginena_Terra_Indiginena),
  INDEX Area_Uso_Comunitario_FKIndex1(Terra_Indiginena_Terra_Indiginena),
  INDEX Area_Uso_Comunitario_FKIndex2(Area_Especial_Area_Especial)
);

CREATE TABLE Edif_Pub_Civil (
  Area_Especial_Area_Especial SERIAL NOT NULL,
  Edif_Pub_Civil SERIAL NOT NULL,
  idEdif_Pub_Civil MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Especial_Area_Especial, Edif_Pub_Civil),
  INDEX Edif_Pub_Civil_FKIndex1(Area_Especial_Area_Especial)
);

CREATE TABLE Municipio (
  Municipio SERIAL NOT NULL,
  idMunicipio POLYGON NOT NULL AUTO_INCREMENT,
  Aldeia_Indigena_Aldeia_Indigena SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Municipio),
  INDEX Municipio_FKIndex1(Aldeia_Indigena_Aldeia_Indigena)
);

CREATE TABLE Outras_Unid_Protegidas (
  Unidades_Protegidas_Area_Especial_Area_Especial SERIAL NOT NULL,
  Unidades_Protegidas_Unidades_Protegidas SERIAL NOT NULL,
  Outras_Unid_Protegidas SERIAL NOT NULL,
  idOutras_Unid_Protegidas MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Unidades_Protegidas_Area_Especial_Area_Especial, Unidades_Protegidas_Unidades_Protegidas, Outras_Unid_Protegidas),
  INDEX Outras_Unid_Protegidas_FKIndex1(Unidades_Protegidas_Area_Especial_Area_Especial, Unidades_Protegidas_Unidades_Protegidas)
);

CREATE TABLE Terra_Indiginena (
  Terra_Indiginena SERIAL NOT NULL,
  idTerra_Indiginena MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Terra_Indiginena)
);

CREATE TABLE Terra_Publica (
  Terra_Publica SERIAL NOT NULL,
  Area_Especial_Area_Especial SERIAL NOT NULL,
  idTerra_Publica POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Terra_Publica, Area_Especial_Area_Especial),
  INDEX Terra_Publica_FKIndex1(Area_Especial_Area_Especial)
);

CREATE TABLE Unidades_Protegidas (
  Area_Especial_Area_Especial SERIAL NOT NULL,
  Unidades_Protegidas SERIAL NOT NULL,
  Unidades_Protegidas_Unidades_Protegidas SERIAL NOT NULL,
  idUnidades_Protegidas POINT NOT NULL AUTO_INCREMENT,
  Unidades_Protegidas_Area_Especial_Area_Especial SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Especial_Area_Especial, Unidades_Protegidas),
  INDEX Unidades_Protegidas_FKIndex1(Unidades_Protegidas_Area_Especial_Area_Especial, Unidades_Protegidas_Unidades_Protegidas),
  INDEX Unidades_Protegidas_FKIndex2(Area_Especial_Area_Especial)
);

CREATE TABLE Unidade_Conservacao (
  Unidades_Protegidas_Area_Especial_Area_Especial SERIAL NOT NULL,
  Unidades_Protegidas_Unidades_Protegidas SERIAL NOT NULL,
  Unidade_Conservacao SERIAL NOT NULL,
  idUnidade_Conservacao POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Unidades_Protegidas_Area_Especial_Area_Especial, Unidades_Protegidas_Unidades_Protegidas, Unidade_Conservacao),
  INDEX Unidade_Conservacao_FKIndex1(Unidades_Protegidas_Area_Especial_Area_Especial, Unidades_Protegidas_Unidades_Protegidas)
);

CREATE TABLE Unidade_Conservacao_Não_SNUC (
  Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial SERIAL NOT NULL,
  Unidade_Conservacao_Unidade_Conservacao SERIAL NOT NULL,
  Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas SERIAL NOT NULL,
  Unidade_Conservacao_Não_SNUC SERIAL NOT NULL,
  idUnidade_Conservacao_Não_SNUC MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial, Unidade_Conservacao_Unidade_Conservacao, Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas, Unidade_Conservacao_Não_SNUC),
  INDEX Unidade_Conservacao_Não_SNUC_FKIndex1(Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial, Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas, Unidade_Conservacao_Unidade_Conservacao)
);

CREATE TABLE Unidade_Conservacao_SNUC (
  Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial SERIAL NOT NULL,
  Unidade_Conservacao_Unidade_Conservacao SERIAL NOT NULL,
  Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas SERIAL NOT NULL,
  Unidade_Conservacao_SNUC SERIAL NOT NULL,
  idUnidade_Conservacao_SNUC POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial, Unidade_Conservacao_Unidade_Conservacao, Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas, Unidade_Conservacao_SNUC),
  INDEX Unidade_Conservacao_SNUC_FKIndex1(Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial, Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas, Unidade_Conservacao_Unidade_Conservacao)
);

CREATE TABLE Unidade_Protecao_Integral (
  Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial SERIAL NOT NULL,
  Unidade_Conservacao_SNUC_Unidade_Conservacao_SNUC SERIAL NOT NULL,
  Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas SERIAL NOT NULL,
  Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidade_Conservacao SERIAL NOT NULL,
  Unidade_Protecao_Integral SERIAL NOT NULL,
  idUnidade_Protecao_Integral MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial, Unidade_Conservacao_SNUC_Unidade_Conservacao_SNUC, Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas, Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidade_Conservacao, Unidade_Protecao_Integral),
  INDEX Unidade_Protecao_Integral_FKIndex1(Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial, Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidade_Conservacao, Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas, Unidade_Conservacao_SNUC_Unidade_Conservacao_SNUC)
);

CREATE TABLE Unidade_Uso_Sustentavel (
  Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial SERIAL NOT NULL,
  Unidade_Conservacao_SNUC_Unidade_Conservacao_SNUC SERIAL NOT NULL,
  Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas SERIAL NOT NULL,
  Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidade_Conservacao SERIAL NOT NULL,
  Unidade_Uso_Sustentavel SERIAL NOT NULL,
  idUnidade_Uso_Sustentavel MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial, Unidade_Conservacao_SNUC_Unidade_Conservacao_SNUC, Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas, Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidade_Conservacao, Unidade_Uso_Sustentavel),
  INDEX Unidade_Uso_Sustentavel_FKIndex1(Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Area_Especial_Area_Especial, Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidade_Conservacao, Unidade_Conservacao_SNUC_Unidade_Conservacao_Unidades_Protegidas_Unidades_Protegidas, Unidade_Conservacao_SNUC_Unidade_Conservacao_SNUC)
);


