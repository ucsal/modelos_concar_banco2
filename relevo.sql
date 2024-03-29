CREATE TABLE Alteracao_Fisiografica_Antropica (
  Alteracao_Fisiografica_Antropica SERIAL NOT NULL,
  Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  idAlteracao_Fisiografica_Antropica MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Alteracao_Fisiografica_Antropica, Elemento_Fisiografico_Elemento_Fisiografico),
  INDEX Alteracao_Fisiografica_Antropica_FKIndex1(Elemento_Fisiografico_Elemento_Fisiografico)
);

CREATE TABLE Barragem (
  Barragem SERIAL NOT NULL,
  idBarragem MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Barragem)
);

CREATE TABLE Curva_Batimetrica (
  Curva_Batimetrica SERIAL NOT NULL,
  Isolinha_Hipsometrica_Isolinha_Hipsometrica SERIAL NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  idCurva_Batimetrica LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Curva_Batimetrica, Isolinha_Hipsometrica_Isolinha_Hipsometrica),
  INDEX Curva_Batimetrica_FKIndex1(Isolinha_Hipsometrica_Isolinha_Hipsometrica),
  INDEX Curva_Batimetrica_FKIndex2(Massa_Dagua_Massa_Dagua)
);

CREATE TABLE Curva_Nivel (
  Curva_Nivel SERIAL NOT NULL,
  Isolinha_Hipsometrica_Isolinha_Hipsometrica SERIAL NOT NULL,
  Dolina_Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  Dolina_Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Dolina_Dolina SERIAL NOT NULL,
  Vegetacao_Vegetacao SERIAL NOT NULL,
  Barragem_Barragem SERIAL NOT NULL,
  idCurva_Nivel LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Curva_Nivel, Isolinha_Hipsometrica_Isolinha_Hipsometrica),
  INDEX Curva_Nivel_FKIndex1(Isolinha_Hipsometrica_Isolinha_Hipsometrica),
  INDEX Curva_Nivel_FKIndex2(Barragem_Barragem),
  INDEX Curva_Nivel_FKIndex3(Vegetacao_Vegetacao),
  INDEX Curva_Nivel_FKIndex4(Dolina_Dolina, Dolina_Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico, Dolina_Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural)
);

CREATE TABLE Dolina (
  Dolina SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  idDolina MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Dolina, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural),
  INDEX Dolina_FKIndex1(Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico)
);

CREATE TABLE Duna (
  Duna SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  idDuna MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Duna, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural),
  INDEX Duna_FKIndex1(Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico)
);

CREATE TABLE Elemento_Fisiografico (
  Elemento_Fisiografico SERIAL NOT NULL,
  Terreno_Exposto_Terreno_Exposto SERIAL NOT NULL,
  Curva_Nivel_Isolinha_Hipsometrica_Isolinha_Hipsometrica SERIAL NOT NULL,
  Curva_Nivel_Curva_Nivel SERIAL NOT NULL,
  idElemento_Fisiografico POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Elemento_Fisiografico),
  INDEX Elemento_Fisiografico_FKIndex1(Curva_Nivel_Curva_Nivel, Curva_Nivel_Isolinha_Hipsometrica_Isolinha_Hipsometrica),
  INDEX Elemento_Fisiografico_FKIndex2(Terreno_Exposto_Terreno_Exposto)
);

CREATE TABLE Elemento_Fisiografico_Natural (
  Elemento_Fisiografico_Natural SERIAL NOT NULL,
  Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Limite_Massa_Dagua_Limite_Massa_Dagua SERIAL NOT NULL,
  idElemento_Fisiografico_Natural MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Elemento_Fisiografico_Natural, Elemento_Fisiografico_Elemento_Fisiografico),
  INDEX Elemento_Fisiografico_Natural_FKIndex1(Elemento_Fisiografico_Elemento_Fisiografico),
  INDEX Elemento_Fisiografico_Natural_FKIndex2(Limite_Massa_Dagua_Limite_Massa_Dagua)
);

CREATE TABLE Escarpa_Talude (
  Escarpa_Talude SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  idEscarpa_Talude MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Escarpa_Talude, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural),
  INDEX Escarpa_Talude_FKIndex1(Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico)
);

CREATE TABLE Fenda_Falha (
  Fenda_Falha SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  idFenda_Falha MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Fenda_Falha, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural),
  INDEX Fenda_Falha_FKIndex1(Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico)
);

CREATE TABLE Gruta_Caverna (
  Gruta_Caverna SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  idGruta_Caverna POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Gruta_Caverna, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural),
  INDEX Gruta_Caverna_FKIndex1(Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico)
);

CREATE TABLE Ilha (
  Ilha SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  idIlha MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ilha),
  INDEX Ilha_FKIndex1(Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico)
);

CREATE TABLE Isolinha_Hipsometrica (
  Isolinha_Hipsometrica SERIAL NOT NULL,
  idIsolinha_Hipsometrica POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Isolinha_Hipsometrica)
);

CREATE TABLE Limite_Massa_Dagua (
  Limite_Massa_Dagua SERIAL NOT NULL,
  idLimite_Massa_Dagua LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Limite_Massa_Dagua)
);

CREATE TABLE Massa_Dagua (
  Massa_Dagua SERIAL NOT NULL,
  idMassa_Dagua MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Massa_Dagua)
);

CREATE TABLE Pico (
  Pico SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  Ponto_Cotado_Altimetrico_Ponto_Hipsometrico_Ponto_Hipsometrico SERIAL NOT NULL,
  Ponto_Cotado_Altimetrico_Ponto_Cotado_Altimetrico SERIAL NOT NULL,
  idPico POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Pico, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural),
  INDEX Pico_FKIndex1(Ponto_Cotado_Altimetrico_Ponto_Cotado_Altimetrico, Ponto_Cotado_Altimetrico_Ponto_Hipsometrico_Ponto_Hipsometrico),
  INDEX Pico_FKIndex2(Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico)
);

CREATE TABLE Ponto_Cotado_Altimetrico (
  Ponto_Cotado_Altimetrico SERIAL NOT NULL,
  Ponto_Hipsometrico_Ponto_Hipsometrico SERIAL NOT NULL,
  idPonto_Cotado_Altimetrico POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Cotado_Altimetrico, Ponto_Hipsometrico_Ponto_Hipsometrico),
  INDEX Ponto_Cotado_Altimetrico_FKIndex1(Ponto_Hipsometrico_Ponto_Hipsometrico)
);

CREATE TABLE Ponto_Cotado_Batimetrico (
  Ponto_Cotado_Batimetrico SERIAL NOT NULL,
  Ponto_Hipsometrico_Ponto_Hipsometrico SERIAL NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  idPonto_Cotado_Batimetrico POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Cotado_Batimetrico, Ponto_Hipsometrico_Ponto_Hipsometrico),
  INDEX Ponto_Cotado_Batimetrico_FKIndex1(Massa_Dagua_Massa_Dagua),
  INDEX Ponto_Cotado_Batimetrico_FKIndex2(Ponto_Hipsometrico_Ponto_Hipsometrico)
);

CREATE TABLE Ponto_Hipsometrico (
  Ponto_Hipsometrico SERIAL NOT NULL,
  idPonto_Hipsometrico POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Hipsometrico)
);

CREATE TABLE Rocha (
  Rocha SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  idRocha MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Rocha, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural),
  INDEX Rocha_FKIndex1(Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural, Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico)
);

CREATE TABLE Terreno_Exposto (
  Terreno_Exposto SERIAL NOT NULL,
  idTerreno_Exposto POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Terreno_Exposto)
);

CREATE TABLE Trecho_Ferroviaria (
  Trecho_Ferroviaria SERIAL NOT NULL,
  idTrecho_Ferroviaria LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Ferroviaria)
);

CREATE TABLE Trecho_Rodoviario (
  Trecho_Rodoviario SERIAL NOT NULL,
  idTrecho_Rodoviario LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Rodoviario)
);

CREATE TABLE Vegetacao (
  Vegetacao SERIAL NOT NULL,
  Duna_Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural SERIAL NOT NULL,
  Duna_Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  Duna_Duna SERIAL NOT NULL,
  Elemento_Fisiografico_Elemento_Fisiografico SERIAL NOT NULL,
  idVegetacao POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Vegetacao),
  INDEX Vegetacao_FKIndex1(Elemento_Fisiografico_Elemento_Fisiografico),
  INDEX Vegetacao_FKIndex2(Duna_Duna, Duna_Elemento_Fisiografico_Natural_Elemento_Fisiografico_Elemento_Fisiografico, Duna_Elemento_Fisiografico_Natural_Elemento_Fisiografico_Natural)
);


