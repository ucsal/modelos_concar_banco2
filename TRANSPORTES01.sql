CREATE TABLE Area_Estrut_Transporte (
  Area_Estrut_Transporte SERIAL NOT NULL,
  idArea_Estrut_Transporte POLYGON NOT NULL AUTO_INCREMENT,
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Estrut_Transporte),
  INDEX Area_Estrut_Transporte_FKIndex1(Estrut_Transporte_Estrut_Transporte)
);

CREATE TABLE Caminho_Aereo (
  Caminho_Aereo SERIAL NOT NULL,
  Estrut_Apoio_Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Estrut_Apoio_Estrut_Apoio SERIAL NOT NULL,
  idCaminho_Aereo LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Caminho_Aereo),
  INDEX Camnho_Aereo_FKIndex1(Estrut_Apoio_Estrut_Apoio, Estrut_Apoio_Estrut_Transporte_Estrut_Transporte)
);

CREATE TABLE Complexo_Aero_Portuario (
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Complexo_Aero_Portuario SERIAL NOT NULL,
  idComplexo_Aero_Portuario MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Estrut_Transporte_Estrut_Transporte, Complexo_Aero_Portuario),
  INDEX Complexo_Aero_Portuario_FKIndex1(Estrut_Transporte_Estrut_Transporte)
);

CREATE TABLE Complexo_Portuario (
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Complexo_Portuario SERIAL NOT NULL,
  idComplexo_Portuario MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Estrut_Transporte_Estrut_Transporte, Complexo_Portuario),
  INDEX Complexo_Portuario_FKIndex1(Estrut_Transporte_Estrut_Transporte)
);

CREATE TABLE Deposito_Geral (
  Deposito_Geral SERIAL NOT NULL,
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  idDeposito_Geral MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Deposito_Geral),
  INDEX Deposito_Geral_FKIndex1(Estrut_Transporte_Estrut_Transporte)
);

CREATE TABLE Entrocamento (
  Entrocamento SERIAL NOT NULL,
  idEntrocamento POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Entrocamento)
);

CREATE TABLE Estrut_Apoio (
  Estrut_Apoio SERIAL NOT NULL,
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Faixa_Seguranca_Faixa_Seguranca SERIAL NOT NULL,
  idEstrut_Apoio MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Estrut_Apoio, Estrut_Transporte_Estrut_Transporte),
  INDEX Estrut_Apoio_FKIndex1(Estrut_Transporte_Estrut_Transporte),
  INDEX Estrut_Apoio_FKIndex2(Faixa_Seguranca_Faixa_Seguranca)
);

CREATE TABLE Estrut_Transporte (
  Estrut_Transporte SERIAL NOT NULL,
  idEstrut_Transporte POINT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(Estrut_Transporte)
);

CREATE TABLE Faixa_Seguranca (
  Faixa_Seguranca SERIAL NOT NULL,
  idFaixa_Seguranca POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Faixa_Seguranca)
);

CREATE TABLE Funicular (
  Funicular SERIAL NOT NULL,
  Estrut_Apoio_Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Estrut_Apoio_Estrut_Apoio SERIAL NOT NULL,
  idFunicular MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Funicular),
  INDEX Funicular_FKIndex1(Estrut_Apoio_Estrut_Apoio, Estrut_Apoio_Estrut_Transporte_Estrut_Transporte)
);

CREATE TABLE Galeria_Bueiro (
  Galeria_Bueiro SERIAL NOT NULL,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  idGaleria_Bueiro MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Galeria_Bueiro),
  INDEX Galeria_Bueiro_FKIndex1(Trecho_Curso_Dagua_Trecho_Curso_Dagua)
);

CREATE TABLE Passagem_Elevada_Viaduto (
  Passagem_Elevada_Viaduto SERIAL NOT NULL,
  idPassagem_Elevada_Viaduto MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Passagem_Elevada_Viaduto)
);

CREATE TABLE Patio (
  Patio SERIAL NOT NULL,
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  idPatio MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Patio),
  INDEX Patio_FKIndex1(Estrut_Transporte_Estrut_Transporte)
);

CREATE TABLE Ponte (
  Ponte SERIAL NOT NULL,
  idPonte MULTIPOINT NOT NULL AUTO_INCREMENT,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponte),
  INDEX Ponte_FKIndex1(Trecho_Curso_Dagua_Trecho_Curso_Dagua)
);

CREATE TABLE Travessia (
  Travessia SERIAL NOT NULL,
  idTravessia MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Travessia)
);

CREATE TABLE Travessia_Pedestre (
  Travessia_Pedestre SERIAL NOT NULL,
  idTravessia_Pedestre MULTIPOINT NOT NULL AUTO_INCREMENT,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Travessia_Pedestre),
  INDEX Travessia_Pedestre_FKIndex1(Trecho_Curso_Dagua_Trecho_Curso_Dagua)
);

CREATE TABLE Trecho_Curso_Dagua (
  Trecho_Curso_Dagua SERIAL NOT NULL,
  idTrecho_Curso_Dagua MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Travessia_Travessia SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Curso_Dagua),
  INDEX Trecho_Curso_Dagua_FKIndex1(Travessia_Travessia)
);

CREATE TABLE Tunel (
  Tunel SERIAL NOT NULL,
  idTunel MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Tunel)
);


