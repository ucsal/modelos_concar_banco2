CREATE TABLE Aero_Duto (
  Aero_Duto SERIAL NOT NULL,
  idAero_Duto POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Aero_Duto)
);

CREATE TABLE Area_Especial (
  Area_Especial SERIAL NOT NULL,
  idArea_Especial POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Especial)
);

CREATE TABLE Condutor_Hidrico (
  Trecho_Duto_Trecho_Duto SERIAL NOT NULL,
  Condutor_Hidrico SERIAL NOT NULL,
  idCondutor_Hidrico LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Duto_Trecho_Duto, Condutor_Hidrico),
  INDEX Condutor_Hidrico_FKIndex1(Trecho_Duto_Trecho_Duto)
);

CREATE TABLE Deposito_Geral (
  Ponto_Duto_Ponto_Duto SERIAL NOT NULL,
  Deposito_Geral SERIAL NOT NULL,
  idDeposito_Geral MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Duto_Ponto_Duto, Deposito_Geral),
  INDEX Deposito_Geral_FKIndex1(Ponto_Duto_Ponto_Duto)
);

CREATE TABLE Duto (
  Duto SERIAL NOT NULL,
  Trecho_Duto_Trecho_Duto SERIAL NOT NULL,
  idDuto LINESTRING NOT NULL AUTO_INCREMENT,
  Aero_Duto_Aero_Duto SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Duto),
  INDEX Duto_FKIndex1(Aero_Duto_Aero_Duto),
  INDEX Duto_FKIndex2(Trecho_Duto_Trecho_Duto)
);

CREATE TABLE Faixa_Seguranca (
  Faixa_Seguranca SERIAL NOT NULL,
  idFaixa_Seguranca POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Faixa_Seguranca)
);

CREATE TABLE Localidade (
  Localidade SERIAL NOT NULL,
  idLocalidade POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Localidade)
);

CREATE TABLE Local_Critico (
  Ponto_Duto_Ponto_Duto SERIAL NOT NULL,
  Local_Critico SERIAL NOT NULL,
  Localidade_Localidade SERIAL NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  Area_Especial_Area_Especial SERIAL NOT NULL,
  Ponto_Mudanca_Ponto_Mudanca SERIAL NOT NULL,
  idLocal_Critico MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Duto_Ponto_Duto, Local_Critico),
  INDEX Local_Critico_FKIndex1(Ponto_Duto_Ponto_Duto),
  INDEX Local_Critico_FKIndex2(Area_Especial_Area_Especial),
  INDEX Local_Critico_FKIndex3(Massa_Dagua_Massa_Dagua),
  INDEX Local_Critico_FKIndex4(Localidade_Localidade),
  INDEX Local_Critico_FKIndex5(Ponto_Mudanca_Ponto_Mudanca)
);

CREATE TABLE Massa_Dagua (
  Massa_Dagua SERIAL NOT NULL,
  idMassa_Dagua POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Massa_Dagua)
);

CREATE TABLE Ponto_Duto (
  Ponto_Duto SERIAL NOT NULL,
  idPonto_Duto POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Duto)
);

CREATE TABLE Ponto_Mudanca (
  Ponto_Mudanca SERIAL NOT NULL,
  idPonto_Mudanca POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Mudanca)
);

CREATE TABLE Trecho_Duto (
  Trecho_Duto SERIAL NOT NULL,
  Faixa_Seguranca_Faixa_Seguranca SERIAL NOT NULL,
  Tunel_Tunel SERIAL NOT NULL,
  idTrecho_Duto LINESTRING NOT NULL AUTO_INCREMENT,
  Ponto_Duto_Ponto_Duto SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Duto),
  INDEX Trecho_Duto_FKIndex1(Ponto_Duto_Ponto_Duto),
  INDEX Trecho_Duto_FKIndex2(Tunel_Tunel),
  INDEX Trecho_Duto_FKIndex3(Faixa_Seguranca_Faixa_Seguranca)
);

CREATE TABLE Tunel (
  Tunel SERIAL NOT NULL,
  idTunel MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Tunel)
);


