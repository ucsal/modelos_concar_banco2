CREATE TABLE Atracadouro (
  idAtracadouro MULTIPOINT NOT NULL AUTO_INCREMENT,
  Foz_Maritima_Foz_Maritima SERIAL NOT NULL,
  Complexo_Portuario_Complexo_Portuario SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(idAtracadouro),
  INDEX Atracadouro_FKIndex1(Complexo_Portuario_Complexo_Portuario),
  INDEX Atracadouro_FKIndex2(Foz_Maritima_Foz_Maritima)
);

CREATE TABLE Banco_Areia (
  Banco_Areia SERIAL NOT NULL,
  idBanco_Areia MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Banco_Areia)
);

CREATE TABLE Barragem (
  Barragem SERIAL NOT NULL,
  idBarragem MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Barragem)
);

CREATE TABLE Complexo_Portuario (
  Complexo_Portuario SERIAL NOT NULL,
  idComplexo_Portuario MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Complexo_Portuario)
);

CREATE TABLE Confluencia (
  Confluencia SERIAL NOT NULL,
  idConfluencia POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Confluencia)
);

CREATE TABLE Corredeira (
  Corredeira SERIAL NOT NULL,
  idCorredeira MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Corredeira)
);

CREATE TABLE Eclusa (
  Eclusa SERIAL NOT NULL,
  idEclusa MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Eclusa)
);

CREATE TABLE Edif_Constr_Portuaria (
  Edif_Constr_Portuaria SERIAL NOT NULL,
  Complexo_Portuario_Complexo_Portuario SERIAL NOT NULL,
  idEdif_Constr_Portuaria MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Constr_Portuaria),
  INDEX Edif_Constr_Portuaria_FKIndex1(Complexo_Portuario_Complexo_Portuario)
);

CREATE TABLE Foz_Maritima (
  Foz_Maritima SERIAL NOT NULL,
  idFoz_Maritima MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Foz_Maritima)
);

CREATE TABLE Fundeadouro (
  Fundeadouro SERIAL NOT NULL,
  Complexo_Portuario_Complexo_Portuario SERIAL NOT NULL,
  idFundeadouro MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Fundeadouro),
  INDEX Fundeadouro_FKIndex1(Complexo_Portuario_Complexo_Portuario)
);

CREATE TABLE Hidrovia (
  Hidrovia_2 SERIAL NOT NULL,
  Trecho_Hidroviario_Trecho_Hidroviario SERIAL NOT NULL,
  Hidrovia LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Hidrovia_2),
  INDEX Hidrovia_FKIndex1(Trecho_Hidroviario_Trecho_Hidroviario)
);

CREATE TABLE Massa_Dagua (
  Massa_Dagua SERIAL NOT NULL,
  idMassa_Dagua POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Massa_Dagua)
);

CREATE TABLE Obstaculo_Navegacao (
  Obstaculo_Navegacao SERIAL NOT NULL,
  Banco_Areia_Banco_Areia SERIAL NOT NULL,
  Trecho_Hidroviario_Trecho_Hidroviario SERIAL NOT NULL,
  Rocha_Em_Agua_Rocha_Em_Agua SERIAL NOT NULL,
  Recife_idRecife MULTIPOINT NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  idObstaculo_Navegacao MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Obstaculo_Navegacao),
  INDEX Obstaculo_Navegacao_FKIndex1(Massa_Dagua_Massa_Dagua),
  INDEX Obstaculo_Navegacao_FKIndex2(Recife_idRecife),
  INDEX Obstaculo_Navegacao_FKIndex3(Rocha_Em_Agua_Rocha_Em_Agua),
  INDEX Obstaculo_Navegacao_FKIndex4(Trecho_Hidroviario_Trecho_Hidroviario),
  INDEX Obstaculo_Navegacao_FKIndex5(Banco_Areia_Banco_Areia)
);

CREATE TABLE Ponto_Hidroviario (
  Ponto_Hidroviario SERIAL NOT NULL,
  Confluencia_Confluencia SERIAL NOT NULL,
  Barragem_Barragem SERIAL NOT NULL,
  Queda_Dagua_Queda_Dagua SERIAL NOT NULL,
  Corredeira_Corredeira SERIAL NOT NULL,
  Foz_Maritima_Foz_Maritima SERIAL NOT NULL,
  Complexo_Portuario_Complexo_Portuario SERIAL NOT NULL,
  Eclusa_Eclusa SERIAL NOT NULL,
  idPonto_Hidroviario POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NOT NULL,
  PRIMARY KEY(Ponto_Hidroviario),
  INDEX Ponto_Hidroviario_FKIndex1(Eclusa_Eclusa),
  INDEX Ponto_Hidroviario_FKIndex2(Complexo_Portuario_Complexo_Portuario),
  INDEX Ponto_Hidroviario_FKIndex3(Foz_Maritima_Foz_Maritima),
  INDEX Ponto_Hidroviario_FKIndex4(Corredeira_Corredeira),
  INDEX Ponto_Hidroviario_FKIndex5(Queda_Dagua_Queda_Dagua),
  INDEX Ponto_Hidroviario_FKIndex6(Barragem_Barragem),
  INDEX Ponto_Hidroviario_FKIndex7(Confluencia_Confluencia)
);

CREATE TABLE Queda_Dagua (
  Queda_Dagua SERIAL NOT NULL,
  idQueda_Dagua MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Queda_Dagua)
);

CREATE TABLE Recife (
  idRecife MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(idRecife)
);

CREATE TABLE Rocha_Em_Agua (
  Rocha_Em_Agua SERIAL NOT NULL,
  idRocha_Em_Agua MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Rocha_Em_Agua)
);

CREATE TABLE Sinalizacao (
  Sinalizacao SERIAL NOT NULL,
  Trecho_Hidroviario_Trecho_Hidroviario SERIAL NOT NULL,
  idSinalizacao POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Sinalizacao),
  INDEX Sinalizacao_FKIndex1(Trecho_Hidroviario_Trecho_Hidroviario)
);

CREATE TABLE Trecho_Drenagem (
  Trecho_Drenagem SERIAL NOT NULL,
  Trecho_Hidroviario_Trecho_Hidroviario SERIAL NOT NULL,
  idTrecho_Drenagem LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Drenagem),
  INDEX Trecho_Drenagem_FKIndex1(Trecho_Hidroviario_Trecho_Hidroviario)
);

CREATE TABLE Trecho_Hidroviario (
  Trecho_Hidroviario SERIAL NOT NULL,
  Ponto_Hidroviario_Ponto_Hidroviario SERIAL NOT NULL,
  Complexo_Portuario_Complexo_Portuario SERIAL NOT NULL,
  idTrecho_Hidroviario LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Hidroviario),
  INDEX Trecho_Hidroviario_FKIndex1(Complexo_Portuario_Complexo_Portuario),
  INDEX Trecho_Hidroviario_FKIndex2(Ponto_Hidroviario_Ponto_Hidroviario)
);


