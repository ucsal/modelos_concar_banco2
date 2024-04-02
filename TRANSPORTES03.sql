CREATE TABLE Arruamento (
  Arruamento SERIAL NOT NULL,
  idArruamento LINESTRING NOT NULL AUTO_INCREMENT,
  Trecho_Ferroviario_Trecho_Ferroviario SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Arruamento),
  INDEX Arruamento_FKIndex1(Trecho_Ferroviario_Trecho_Ferroviario)
);

CREATE TABLE Cremalheira (
  Cremalheira SERIAL NOT NULL,
  idCremalheira MULTIPOINT NOT NULL AUTO_INCREMENT,
  Trecho_Ferroviario_Trecho_Ferroviario SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Cremalheira),
  INDEX Cremalheira_FKIndex1(Trecho_Ferroviario_Trecho_Ferroviario)
);

CREATE TABLE Edif_Metro_Ferroviaria (
  Edif_Metro_Ferroviaria_2 SERIAL NOT NULL,
  idEdif_Metro_Ferroviaria MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 INTEGER UNSIGNED NULL,
  Edif_Metro_Ferroviaria SET NULL,
  PRIMARY KEY(Edif_Metro_Ferroviaria_2)
);

CREATE TABLE Entrontamento (
  Ponto_Ferroviario_Ponto_Ferroviario SERIAL NOT NULL,
  Entrontamento SERIAL NOT NULL,
  idEntrontamento POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Ferroviario_Ponto_Ferroviario, Entrontamento),
  INDEX Entrontamento_FKIndex1(Ponto_Ferroviario_Ponto_Ferroviario)
);

CREATE TABLE Estrut_Apoio (
  Estrut_Apoio SERIAL NOT NULL,
  idEstrut_Apoio MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Edif_Metro_Ferroviaria_2 SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Estrut_Apoio),
  INDEX Estrut_Apoio_FKIndex1(Edif_Metro_Ferroviaria_2)
);

CREATE TABLE Faixa_Seguranca (
  Faixa_Seguranca SERIAL NOT NULL,
  idFaixa_Seguranca POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Faixa_Seguranca)
);

CREATE TABLE Galeria_Bueiro (
  Galeria_Bueiro SERIAL NOT NULL,
  idGaleria_Bueiro MULTIPOINT NOT NULL AUTO_INCREMENT,
  Trecho_Ferroviario_Trecho_Ferroviario SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Galeria_Bueiro),
  INDEX Galeria_Bueiro_FKIndex1(Trecho_Ferroviario_Trecho_Ferroviario)
);

CREATE TABLE Girador_Ferrov (
  Girador_Ferrov SERIAL NOT NULL,
  idGirador_Ferrov POINT NOT NULL AUTO_INCREMENT,
  Estrut_Apoio_Estrut_Apoio SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Girador_Ferrov),
  INDEX Girador_Ferrov_FKIndex1(Estrut_Apoio_Estrut_Apoio)
);

CREATE TABLE Passagem_Elev_Viaduto (
  Passagem_Elev_Viaduto SERIAL NOT NULL,
  Trecho_Ferroviario_Trecho_Ferroviario SERIAL NOT NULL,
  idPassagem_Elev_Viaduto MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Passagem_Elev_Viaduto),
  INDEX Passagem_Elev_Viaduto_FKIndex1(Trecho_Ferroviario_Trecho_Ferroviario)
);

CREATE TABLE Patio (
  Patio SERIAL NOT NULL,
  idPatio MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Patio)
);

CREATE TABLE Ponte (
  Ponte SERIAL NOT NULL,
  idPonte MULTIPOINT NOT NULL AUTO_INCREMENT,
  Trecho_Ferroviario_Trecho_Ferroviario SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponte),
  INDEX Ponte_FKIndex1(Trecho_Ferroviario_Trecho_Ferroviario)
);

CREATE TABLE Ponto_Ferroviario (
  Ponto_Ferroviario SERIAL NOT NULL,
  Patio_Patio SERIAL NOT NULL,
  idPonto_Ferroviario POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Ferroviario),
  INDEX Ponto_Ferroviario_FKIndex1(Patio_Patio)
);

CREATE TABLE Travessia_Pedestre (
  Travessia_Pedestre SERIAL NOT NULL,
  idTravessia_Pedestre MULTIPOINT NOT NULL AUTO_INCREMENT,
  Trecho_Ferroviario_Trecho_Ferroviario SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Travessia_Pedestre),
  INDEX Travessia_Pedestre_FKIndex1(Trecho_Ferroviario_Trecho_Ferroviario)
);

CREATE TABLE Trecho_Ferroviario (
  Trecho_Ferroviario SERIAL NOT NULL,
  Tunel_Tunel SERIAL NOT NULL,
  Ponto_Ferroviario_Ponto_Ferroviario SERIAL NOT NULL,
  idTrecho_Ferroviario LINESTRING NOT NULL AUTO_INCREMENT,
  Via_Ferrea_Via_Ferrea SERIAL NOT NULL,
  Faixa_Seguranca_Faixa_Seguranca SERIAL NOT NULL,
  Estrut_Apoio_Estrut_Apoio SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Ferroviario),
  INDEX Trecho_Ferroviario_FKIndex1(Estrut_Apoio_Estrut_Apoio),
  INDEX Trecho_Ferroviario_FKIndex2(Via_Ferrea_Via_Ferrea),
  INDEX Trecho_Ferroviario_FKIndex3(Tunel_Tunel),
  INDEX Trecho_Ferroviario_FKIndex4(Faixa_Seguranca_Faixa_Seguranca),
  INDEX Trecho_Ferroviario_FKIndex5(Ponto_Ferroviario_Ponto_Ferroviario)
);

CREATE TABLE Tunel (
  Tunel SERIAL NOT NULL,
  idTunel MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Tunel)
);

CREATE TABLE Via_Ferrea (
  Via_Ferrea SERIAL NOT NULL,
  idVia_Ferrea LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Via_Ferrea)
);


