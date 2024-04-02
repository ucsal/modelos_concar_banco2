CREATE TABLE Area_Umida (
  Area_Umida SERIAL NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  idArea_Umida POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Umida),
  INDEX Area_Umida_FKIndex1(Massa_Dagua_Massa_Dagua)
);

CREATE TABLE Bacia_Hidrografica (
  Bacia_Hidrografica SERIAL NOT NULL,
  idBacia_Hidrografica POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Bacia_Hidrografica)
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
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Barragem),
  INDEX Barragem_FKIndex1(Massa_Dagua_Massa_Dagua)
);

CREATE TABLE Comporta (
  Comporta SERIAL NOT NULL,
  idComporta MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Comporta)
);

CREATE TABLE Confluencia (
  Ponto_Drenagem_Ponto_Drenagem SERIAL NOT NULL,
  Confluencia SERIAL NOT NULL,
  idConfluencia POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Drenagem_Ponto_Drenagem, Confluencia),
  INDEX Confluencia_FKIndex1(Ponto_Drenagem_Ponto_Drenagem)
);

CREATE TABLE Corredeira (
  Corredeira SERIAL NOT NULL,
  idCorredeira MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Corredeira)
);

CREATE TABLE Curso_Dagua (
  Curso_Dagua SERIAL NOT NULL,
  idCurso_Dagua MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Bacia_Hidrografica_Bacia_Hidrografica SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Curso_Dagua),
  INDEX Curso_Dagua_FKIndex1(Bacia_Hidrografica_Bacia_Hidrografica)
);

CREATE TABLE Eclusa (
  Eclusa SERIAL NOT NULL,
  idEclusa MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Eclusa)
);

CREATE TABLE Fonte_Dagua (
  Fonte_Dagua SERIAL NOT NULL,
  idFonte_Dagua POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Fonte_Dagua)
);

CREATE TABLE Foz_Maritima (
  Foz_Maritima SERIAL NOT NULL,
  idFoz_Maritima MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Foz_Maritima)
);

CREATE TABLE Ilha (
  Ilha SERIAL NOT NULL,
  idIlha MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ilha)
);

CREATE TABLE Limite_Massa_Dagua (
  Limite_Massa_Dagua SERIAL NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  idLimite_Massa_Dagua LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Limite_Massa_Dagua),
  INDEX Limite_Massa_Dagua_FKIndex1(Massa_Dagua_Massa_Dagua)
);

CREATE TABLE Massa_Dagua (
  Massa_Dagua SERIAL NOT NULL,
  Bacia_Hidrografica_Bacia_Hidrografica SERIAL NOT NULL,
  idMassa_Dagua POLYGON NOT NULL AUTO_INCREMENT,
  Reservatorio_Hidrico_Reservatorio_Hidrico SERIAL NOT NULL,
  Natureza_Fundo_Natureza_Fundo SERIAL NOT NULL,
  Ilha_Ilha SERIAL NOT NULL,
  Rocha_Em_Agua_Rocha_Em_Agua SERIAL NOT NULL,
  Recife_Recife SERIAL NOT NULL,
  Banco_Areia_Banco_Areia SERIAL NOT NULL,
  Quebramar_Molhe_Quebramar_Molhe SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Massa_Dagua),
  INDEX Massa_Dagua_FKIndex1(Reservatorio_Hidrico_Reservatorio_Hidrico),
  INDEX Massa_Dagua_FKIndex2(Natureza_Fundo_Natureza_Fundo),
  INDEX Massa_Dagua_FKIndex3(Ilha_Ilha),
  INDEX Massa_Dagua_FKIndex4(Rocha_Em_Agua_Rocha_Em_Agua),
  INDEX Massa_Dagua_FKIndex5(Recife_Recife),
  INDEX Massa_Dagua_FKIndex6(Banco_Areia_Banco_Areia),
  INDEX Massa_Dagua_FKIndex7(Quebramar_Molhe_Quebramar_Molhe),
  INDEX Massa_Dagua_FKIndex8(Bacia_Hidrografica_Bacia_Hidrografica)
);

CREATE TABLE Natureza_Fundo (
  Natureza_Fundo SERIAL NOT NULL,
  idNatureza_Fundo POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Natureza_Fundo)
);

CREATE TABLE Ponto_Drenagem (
  Ponto_Drenagem SERIAL NOT NULL,
  Sumidouro_Vertedouro_Sumidouro_Vertedouro SERIAL NOT NULL,
  Foz_Maritima_Foz_Maritima SERIAL NOT NULL,
  Corredeira_Corredeira SERIAL NOT NULL,
  Queda_Dagua_Queda_Dagua SERIAL NOT NULL,
  Comporta_Comporta SERIAL NOT NULL,
  Barragem_Barragem SERIAL NOT NULL,
  Eclusa_Eclusa SERIAL NOT NULL,
  idPonto_Drenagem POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Drenagem),
  INDEX Ponto_Drenagem_FKIndex1(Eclusa_Eclusa),
  INDEX Ponto_Drenagem_FKIndex2(Barragem_Barragem),
  INDEX Ponto_Drenagem_FKIndex3(Comporta_Comporta),
  INDEX Ponto_Drenagem_FKIndex4(Queda_Dagua_Queda_Dagua),
  INDEX Ponto_Drenagem_FKIndex5(Corredeira_Corredeira),
  INDEX Ponto_Drenagem_FKIndex6(Foz_Maritima_Foz_Maritima),
  INDEX Ponto_Drenagem_FKIndex7(Sumidouro_Vertedouro_Sumidouro_Vertedouro)
);

CREATE TABLE Ponto_Inicio_Drenagem (
  Ponto_Inicio_Drenagem SERIAL NOT NULL,
  Ponto_Drenagem_Ponto_Drenagem SERIAL NOT NULL,
  idPonto_Inicio_Drenagem POINT NOT NULL AUTO_INCREMENT,
  Fonte_Dagua_Fonte_Dagua SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Inicio_Drenagem, Ponto_Drenagem_Ponto_Drenagem),
  INDEX Ponto_Inicio_Drenagem_FKIndex1(Fonte_Dagua_Fonte_Dagua),
  INDEX Ponto_Inicio_Drenagem_FKIndex2(Ponto_Drenagem_Ponto_Drenagem)
);

CREATE TABLE Quebramar_Molhe (
  Quebramar_Molhe SERIAL NOT NULL,
  idQuebramar_Molhe MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Quebramar_Molhe)
);

CREATE TABLE Queda_Dagua (
  Queda_Dagua SERIAL NOT NULL,
  idQueda_Dagua MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Queda_Dagua)
);

CREATE TABLE Recife (
  Recife SERIAL NOT NULL,
  idRecife MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Recife)
);

CREATE TABLE Reservatorio_Hidrico (
  Reservatorio_Hidrico SERIAL NOT NULL,
  idReservatorio_Hidrico POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Reservatorio_Hidrico)
);

CREATE TABLE Rocha_Em_Agua (
  Rocha_Em_Agua SERIAL NOT NULL,
  idRocha_Em_Agua MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Rocha_Em_Agua)
);

CREATE TABLE Sumidouro_Vertedouro (
  Sumidouro_Vertedouro SERIAL NOT NULL,
  idSumidouro_Vertedouro POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Sumidouro_Vertedouro)
);

CREATE TABLE Terreno_Sujeito_Inundacao (
  Terreno_Sujeito_Inundacao SERIAL NOT NULL,
  Foz_Maritima_Foz_Maritima SERIAL NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  idTerreno_Sujeito_Inundacao POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Terreno_Sujeito_Inundacao),
  INDEX Terreno_Sujeito_Inundacao_FKIndex1(Massa_Dagua_Massa_Dagua),
  INDEX Terreno_Sujeito_Inundacao_FKIndex2(Foz_Maritima_Foz_Maritima)
);

CREATE TABLE Trecho_Curso_Dagua (
  Trecho_Curso_Dagua SERIAL NOT NULL,
  idTrecho_Curso_Dagua MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Curso_Dagua_Curso_Dagua SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Curso_Dagua),
  INDEX Trecho_Curso_Dagua_FKIndex1(Curso_Dagua_Curso_Dagua)
);

CREATE TABLE Trecho_Drenagem (
  Trecho_Drenagem SERIAL NOT NULL,
  Corredeira_Corredeira SERIAL NOT NULL,
  Queda_Dagua_Queda_Dagua SERIAL NOT NULL,
  Barragem_Barragem SERIAL NOT NULL,
  Ponto_Drenagem_Ponto_Drenagem SERIAL NOT NULL,
  idTrecho_Drenagem LINESTRING NOT NULL AUTO_INCREMENT,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  Trecho_Massa_Dagua_Trecho_Massa_Dagua SERIAL NOT NULL,
  Trecho_Massa_Dagua_Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  Area_Umida_Area_Umida SERIAL NOT NULL,
  Terreno_Sujeito_Inundacao_Terreno_Sujeito_Inundacao SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Drenagem),
  INDEX Trecho_Drenagem_FKIndex1(Ponto_Drenagem_Ponto_Drenagem),
  INDEX Trecho_Drenagem_FKIndex2(Trecho_Massa_Dagua_Massa_Dagua_Massa_Dagua, Trecho_Massa_Dagua_Trecho_Massa_Dagua),
  INDEX Trecho_Drenagem_FKIndex3(Corredeira_Corredeira),
  INDEX Trecho_Drenagem_FKIndex4(Queda_Dagua_Queda_Dagua),
  INDEX Trecho_Drenagem_FKIndex5(Barragem_Barragem),
  INDEX Trecho_Drenagem_FKIndex6(Trecho_Curso_Dagua_Trecho_Curso_Dagua),
  INDEX Trecho_Drenagem_FKIndex7(Area_Umida_Area_Umida),
  INDEX Trecho_Drenagem_FKIndex8(Terreno_Sujeito_Inundacao_Terreno_Sujeito_Inundacao),
  INDEX Trecho_Drenagem_FKIndex9(Massa_Dagua_Massa_Dagua)
);

CREATE TABLE Trecho_Massa_Dagua (
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  Trecho_Massa_Dagua SERIAL NOT NULL,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  idTrecho_Massa_Dagua POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Massa_Dagua_Massa_Dagua, Trecho_Massa_Dagua),
  INDEX Trecho_Massa_Dagua_FKIndex1(Massa_Dagua_Massa_Dagua),
  INDEX Trecho_Massa_Dagua_FKIndex2(Trecho_Curso_Dagua_Trecho_Curso_Dagua)
);


