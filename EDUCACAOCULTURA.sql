CREATE TABLE Area_Ensino (
  Area_Ensino SERIAL NOT NULL,
  Org_Ensino_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  idArea_Ensino POLYGON NOT NULL AUTO_INCREMENT,
  Org_Ensino_Org_Ensino SERIAL NOT NULL,
  Org_Ensino_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Org_Ensino_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Ensino),
  INDEX Area_Ensino_FKIndex1(Org_Ensino_Org_Pub_Civil_Org_Pub_Civil, Org_Ensino_Org_Pub_Militar_Org_Pub_Militar, Org_Ensino_Org_Ensino, Org_Ensino_Org_Religiosa_Org_Religiosa)
);

CREATE TABLE Area_Lazer (
  Area_Lazer SERIAL NOT NULL,
  Complexo_Lazer_Complexo_Lazer SERIAL NOT NULL,
  idArea_Lazer MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Lazer_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Lazer),
  INDEX Area_Lazer_FKIndex1(Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar, Complexo_Lazer_Org_Religiosa_Org_Religiosa, Complexo_Lazer_Complexo_Lazer)
);

CREATE TABLE Area_Religiosa (
  Area_Religiosa SERIAL NOT NULL,
  idArea_Religiosa POLYGON NOT NULL AUTO_INCREMENT,
  Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Religiosa),
  INDEX Area_Religiosa_FKIndex1(Org_Religiosa_Org_Religiosa)
);

CREATE TABLE Area_Ruinas (
  Area_Ruinas SERIAL NOT NULL,
  Complexo_Lazer_Complexo_Lazer SERIAL NOT NULL,
  idArea_Ruinas POLYGON NOT NULL AUTO_INCREMENT,
  Edif_Const_Turistica_Edif_Const_Turistica SERIAL NOT NULL,
  Complexo_Lazer_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Ruinas),
  INDEX Area_Ruinas_FKIndex1(Edif_Const_Turistica_Edif_Const_Turistica),
  INDEX Area_Ruinas_FKIndex2(Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar, Complexo_Lazer_Org_Religiosa_Org_Religiosa, Complexo_Lazer_Complexo_Lazer)
);

CREATE TABLE Arquibancada (
  Arquibancada SERIAL NOT NULL,
  idArquibancada MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Lazer_Complexo_Lazer SERIAL NOT NULL,
  Complexo_Lazer_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Arquibancada),
  INDEX Arquibancada_FKIndex1(Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar, Complexo_Lazer_Org_Religiosa_Org_Religiosa, Complexo_Lazer_Complexo_Lazer)
);

CREATE TABLE Caminho_Aereo (
  Caminho_Aereo SERIAL NOT NULL,
  idCaminho_Aereo LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Caminho_Aereo)
);

CREATE TABLE Campo_Quadra (
  Campo_Quadra SERIAL NOT NULL,
  idCampo_Quadra POLYGON NOT NULL AUTO_INCREMENT,
  Complexo_Lazer_Complexo_Lazer SERIAL NOT NULL,
  Complexo_Lazer_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Campo_Quadra),
  INDEX Campo_Quadra_FKIndex1(Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar, Complexo_Lazer_Org_Religiosa_Org_Religiosa, Complexo_Lazer_Complexo_Lazer)
);

CREATE TABLE Complexo_Lazer (
  Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer SERIAL NOT NULL,
  Caminho_Aereo_Caminho_Aereo SERIAL NOT NULL,
  Funicular_Funicular SERIAL NOT NULL,
  idComplexo_Lazer MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Patio_Patio SERIAL NOT NULL,
  Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Pub_Militar_Org_Pub_Militar, Org_Religiosa_Org_Religiosa, Complexo_Lazer),
  INDEX Complexo_Lazer_FKIndex1(Funicular_Funicular),
  INDEX Complexo_Lazer_FKIndex2(Caminho_Aereo_Caminho_Aereo),
  INDEX Complexo_Lazer_FKIndex3(Patio_Patio),
  INDEX Complexo_Lazer_FKIndex4(Org_Pub_Civil_Org_Pub_Civil),
  INDEX Complexo_Lazer_FKIndex5(Org_Religiosa_Org_Religiosa),
  INDEX Complexo_Lazer_FKIndex6(Org_Pub_Militar_Org_Pub_Militar)
);

CREATE TABLE Coreto_Tribuna (
  Coreto_Tribuna SERIAL NOT NULL,
  idCoreto_Tribuna MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Lazer_Complexo_Lazer SERIAL NOT NULL,
  Complexo_Lazer_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Coreto_Tribuna),
  INDEX Coreto_Tribuna_FKIndex1(Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar, Complexo_Lazer_Org_Religiosa_Org_Religiosa, Complexo_Lazer_Complexo_Lazer)
);

CREATE TABLE Edif_Const_Lazer (
  Edif_Const_Lazer SERIAL NOT NULL,
  Complexo_Lazer_Complexo_Lazer SERIAL NOT NULL,
  idEdif_Const_Lazer MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Lazer_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Const_Lazer),
  INDEX Edif_Const_Lazer_FKIndex1(Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar, Complexo_Lazer_Org_Religiosa_Org_Religiosa, Complexo_Lazer_Complexo_Lazer)
);

CREATE TABLE Edif_Const_Turistica (
  Edif_Const_Turistica SERIAL NOT NULL,
  Complexo_Lazer_Complexo_Lazer SERIAL NOT NULL,
  idEdif_Const_Turistica MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Lazer_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Const_Turistica),
  INDEX Edif_Const_Turistica_FKIndex1(Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar, Complexo_Lazer_Org_Religiosa_Org_Religiosa, Complexo_Lazer_Complexo_Lazer)
);

CREATE TABLE Edif_Ensino (
  Edif_Ensino SERIAL NOT NULL,
  idEdif_Ensino MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Ensino_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Org_Ensino_Org_Ensino SERIAL NOT NULL,
  Org_Ensino_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Org_Ensino_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Ensino),
  INDEX Edif_Ensino_FKIndex1(Org_Ensino_Org_Pub_Civil_Org_Pub_Civil, Org_Ensino_Org_Pub_Militar_Org_Pub_Militar, Org_Ensino_Org_Ensino, Org_Ensino_Org_Religiosa_Org_Religiosa)
);

CREATE TABLE Edif_Religiosa (
  Edif_Religiosa SERIAL NOT NULL,
  idEdif_Religiosa MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Desc_2 INTEGER UNSIGNED NULL,
  PRIMARY KEY(Edif_Religiosa),
  INDEX Edif_Religiosa_FKIndex1(Org_Religiosa_Org_Religiosa)
);

CREATE TABLE Funicular (
  Funicular SERIAL NOT NULL,
  idFunicular LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Funicular)
);

CREATE TABLE Org_Ensino (
  Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Org_Ensino SERIAL NOT NULL,
  Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Patio_Patio SERIAL NOT NULL,
  idOrg_Ensino MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Pub_Civil_Org_Pub_Civil, Org_Pub_Militar_Org_Pub_Militar, Org_Ensino, Org_Religiosa_Org_Religiosa),
  INDEX Org_Ensino_FKIndex1(Patio_Patio),
  INDEX Org_Ensino_FKIndex2(Org_Pub_Civil_Org_Pub_Civil),
  INDEX Org_Ensino_FKIndex3(Org_Religiosa_Org_Religiosa),
  INDEX Org_Ensino_FKIndex4(Org_Pub_Militar_Org_Pub_Militar)
);

CREATE TABLE Org_Pub_Civil (
  Org_Pub_Civil SERIAL NOT NULL,
  idOrg_Pub_Civil MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Pub_Civil)
);

CREATE TABLE Org_Pub_Militar (
  Org_Pub_Militar SERIAL NOT NULL,
  idOrg_Pub_Militar MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Pub_Militar)
);

CREATE TABLE Org_Religiosa (
  Org_Religiosa SERIAL NOT NULL,
  idOrg_Religiosa MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Patio_Patio SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Religiosa),
  INDEX Org_Religiosa_FKIndex1(Patio_Patio)
);

CREATE TABLE Patio (
  Patio SERIAL NOT NULL,
  idPatio MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Patio)
);

CREATE TABLE Piscina (
  Piscina SERIAL NOT NULL,
  idPiscina POLYGON NOT NULL AUTO_INCREMENT,
  Complexo_Lazer_Complexo_Lazer SERIAL NOT NULL,
  Complexo_Lazer_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Piscina),
  INDEX Piscina_FKIndex1(Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar, Complexo_Lazer_Org_Religiosa_Org_Religiosa, Complexo_Lazer_Complexo_Lazer)
);

CREATE TABLE Pista_Competicao (
  Pista_Competicao SERIAL NOT NULL,
  idPista_Competicao LINESTRING NOT NULL AUTO_INCREMENT,
  Complexo_Lazer_Complexo_Lazer SERIAL NOT NULL,
  Complexo_Lazer_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Pista_Competicao),
  INDEX Pista_Competicao_FKIndex1(Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar, Complexo_Lazer_Org_Religiosa_Org_Religiosa, Complexo_Lazer_Complexo_Lazer)
);

CREATE TABLE Ruina (
  Ruina SERIAL NOT NULL,
  Complexo_Lazer_Complexo_Lazer SERIAL NOT NULL,
  idRuina MULTIPOINT NOT NULL AUTO_INCREMENT,
  Area_Ruinas_Area_Ruinas SERIAL NOT NULL,
  Complexo_Lazer_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ruina),
  INDEX Ruina_FKIndex1(Area_Ruinas_Area_Ruinas),
  INDEX Ruina_FKIndex2(Complexo_Lazer_Org_Pub_Militar_Org_Pub_Militar, Complexo_Lazer_Org_Religiosa_Org_Religiosa, Complexo_Lazer_Complexo_Lazer)
);


