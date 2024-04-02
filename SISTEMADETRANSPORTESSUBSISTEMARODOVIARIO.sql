CREATE TABLE Arruamento (
  Arruamento SERIAL NOT NULL,
  Trecho_rodoviario_Trecho_rodoviario SERIAL NOT NULL,
  idArruamento LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Arruamento),
  INDEX Arruamento_FKIndex1(Trecho_rodoviario_Trecho_rodoviario),
  INDEX Arruamento_FKIndex2(Trecho_rodoviario_Trecho_rodoviario)
);

CREATE TABLE Ciclovia (
  idCiclovia POINT NOT NULL AUTO_INCREMENT,
  Arruamento_Arruamento SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(idCiclovia),
  INDEX Ciclovia_FKIndex1(Arruamento_Arruamento),
  INDEX Ciclovia_FKIndex2(Arruamento_Arruamento)
);

CREATE TABLE Edif_Rodoviaria (
  Edif_Rodoviaria SERIAL NOT NULL,
  Ponto_Rodoviario_Ponto_Rodoviario SERIAL NOT NULL,
  Estrut_Apoio_Estrut_Apoio SERIAL NOT NULL,
  Trecho_rodoviario_Trecho_rodoviario SERIAL NOT NULL,
  idEdif_Rodoviaria MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Rodoviaria),
  INDEX Edif_Rodoviaria_FKIndex1(Trecho_rodoviario_Trecho_rodoviario),
  INDEX Edif_Rodoviaria_FKIndex2(Estrut_Apoio_Estrut_Apoio),
  INDEX Edif_Rodoviaria_FKIndex3(Ponto_Rodoviario_Ponto_Rodoviario)
);

CREATE TABLE Elemento_Fisiografico_Natural (
  Elemento_Fisiografico_Natural SERIAL NOT NULL,
  idElemento_Fisiografico_Natural MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Elemento_Fisiografico_Natural)
);

CREATE TABLE Entrocamento (
  Entrocamento SERIAL NOT NULL,
  Ponto_Rodoviario_Ponto_Rodoviario SERIAL NOT NULL,
  idEntrocamento POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Entrocamento, Ponto_Rodoviario_Ponto_Rodoviario),
  INDEX Entrocamento_FKIndex1(Ponto_Rodoviario_Ponto_Rodoviario)
);

CREATE TABLE Estrut_Apoio (
  Estrut_Apoio SERIAL NOT NULL,
  idEstrut_Apoio MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Estrut_Apoio)
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
  Desc_2 TEXT NULL,
  PRIMARY KEY(Galeria_Bueiro)
);

CREATE TABLE Identificador_Trecho_Rodoviario (
  Identificador_Trecho_Rodoviario SERIAL NOT NULL,
  Trecho_rodoviario_Trecho_rodoviario SERIAL NOT NULL,
  Via_Rodoviaria_Via_Rodoviaria SERIAL NOT NULL,
  idIdentificador_Trecho_Rodoviario POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Identificador_Trecho_Rodoviario),
  INDEX Identificador_Trecho_Rodoviario_FKIndex1(Via_Rodoviaria_Via_Rodoviaria),
  INDEX Identificador_Trecho_Rodoviario_FKIndex2(Trecho_rodoviario_Trecho_rodoviario)
);

CREATE TABLE Passagem_Elev_Viaduto (
  Passagem_Elev_Viaduto SERIAL NOT NULL,
  idPassagem_Elev_Viaduto MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Passagem_Elev_Viaduto)
);

CREATE TABLE Ponte (
  Ponte SERIAL NOT NULL,
  idPonte MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponte)
);

CREATE TABLE Ponto_Mudanca (
  Ponto_Mudanca SERIAL NOT NULL,
  Ponto_Rodoviario_Ponto_Rodoviario SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  idPonto_Mudanca POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Mudanca, Ponto_Rodoviario_Ponto_Rodoviario),
  INDEX Ponto_Mudanca_FKIndex1(Ponto_Rodoviario_Ponto_Rodoviario),
  INDEX Ponto_Mudanca_FKIndex2(Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural)
);

CREATE TABLE Ponto_Rodoviario (
  Ponto_Rodoviario SERIAL NOT NULL,
  Travessia_Travessia SERIAL NOT NULL,
  Passagem_Elev_Viaduto_Passagem_Elev_Viaduto SERIAL NOT NULL,
  Ponte_Ponte SERIAL NOT NULL,
  Galeria_Bueiro_Galeria_Bueiro SERIAL NOT NULL,
  Travessia_2_Travessia_2 SERIAL NOT NULL,
  idPonto_Rodoviario POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Rodoviario),
  INDEX Ponto_Rodoviario_FKIndex1(Travessia_2_Travessia_2),
  INDEX Ponto_Rodoviario_FKIndex2(Galeria_Bueiro_Galeria_Bueiro),
  INDEX Ponto_Rodoviario_FKIndex3(Ponte_Ponte),
  INDEX Ponto_Rodoviario_FKIndex4(Passagem_Elev_Viaduto_Passagem_Elev_Viaduto),
  INDEX Ponto_Rodoviario_FKIndex5(Travessia_Travessia)
);

CREATE TABLE Posto_Fiscal (
  Posto_Fiscal SERIAL NOT NULL,
  Trecho_rodoviario_Trecho_rodoviario SERIAL NOT NULL,
  idPosto_Fiscal INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Posto_Fiscal),
  INDEX Posto_Fiscal_FKIndex1(Trecho_rodoviario_Trecho_rodoviario)
);

CREATE TABLE Posto_Pol_Rod (
  Posto_Pol_Rod SERIAL NOT NULL,
  Trecho_rodoviario_Trecho_rodoviario SERIAL NOT NULL,
  idPosto_Pol_Rod MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Posto_Pol_Rod),
  INDEX Posto_Pol_Rod_FKIndex1(Trecho_rodoviario_Trecho_rodoviario)
);

CREATE TABLE Travessia (
  Travessia SERIAL NOT NULL,
  Tunel_Tunel SERIAL NOT NULL,
  idTravessia MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Travessia),
  INDEX Travessia_FKIndex1(Tunel_Tunel)
);

CREATE TABLE Travessia_2 (
  Travessia_2 SERIAL NOT NULL,
  Trilha_Picada_Trilha_Picada SERIAL NOT NULL,
  idTravessia_2 MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Travessia_2),
  INDEX Travessia_2_FKIndex1(Trilha_Picada_Trilha_Picada)
);

CREATE TABLE Travessia_Pedestre (
  Travessia_Pedestre SERIAL NOT NULL,
  Trecho_rodoviario_Trecho_rodoviario SERIAL NOT NULL,
  idTravessia_Pedestre MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Travessia_Pedestre),
  INDEX Travessia_Pedestre_FKIndex1(Trecho_rodoviario_Trecho_rodoviario)
);

CREATE TABLE Trecho_rodoviario (
  Trecho_rodoviario SERIAL NOT NULL,
  Tunel_Tunel SERIAL NOT NULL,
  Passagem_Elev_Viaduto_Passagem_Elev_Viaduto SERIAL NOT NULL,
  Ponte_Ponte SERIAL NOT NULL,
  Travessia_2_Travessia_2 SERIAL NOT NULL,
  Trilha_Picada_Trilha_Picada SERIAL NOT NULL,
  Faixa_Seguranca_Faixa_Seguranca SERIAL NOT NULL,
  Estrut_Apoio_Estrut_Apoio SERIAL NOT NULL,
  idTrecho_rodoviario LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_rodoviario),
  INDEX Trecho_rodoviario_FKIndex1(Estrut_Apoio_Estrut_Apoio),
  INDEX Trecho_rodoviario_FKIndex2(Faixa_Seguranca_Faixa_Seguranca),
  INDEX Trecho_rodoviario_FKIndex3(Trilha_Picada_Trilha_Picada),
  INDEX Trecho_rodoviario_FKIndex4(Travessia_2_Travessia_2),
  INDEX Trecho_rodoviario_FKIndex5(Ponte_Ponte),
  INDEX Trecho_rodoviario_FKIndex6(Passagem_Elev_Viaduto_Passagem_Elev_Viaduto),
  INDEX Trecho_rodoviario_FKIndex7(Tunel_Tunel)
);

CREATE TABLE Trilha_Picada (
  Trilha_Picada SERIAL NOT NULL,
  idTrilha_Picada LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trilha_Picada)
);

CREATE TABLE Tunel (
  Tunel SERIAL NOT NULL,
  idTunel MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Tunel)
);

CREATE TABLE Via_Rodoviaria (
  Via_Rodoviaria SERIAL NOT NULL,
  Trecho_rodoviario_Trecho_rodoviario SERIAL NOT NULL,
  idVia_Rodoviaria MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Via_Rodoviaria),
  INDEX Via_Rodoviaria_FKIndex1(Trecho_rodoviario_Trecho_rodoviario)
);


