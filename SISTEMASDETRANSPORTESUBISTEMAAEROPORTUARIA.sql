CREATE TABLE Complexo_Aeoportuario (
  Complexo_Aeoportuario SERIAL NOT NULL,
  idComplexo_Aeoportuario MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Faixa_Seguranca_Faixa_Seguranca SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Complexo_Aeoportuario),
  INDEX Complexo_Aeoportuario_FKIndex1(Faixa_Seguranca_Faixa_Seguranca)
);

CREATE TABLE Edif_Constr_Aeroportuaria (
  Edif_Constr_Aeroportuaria SERIAL NOT NULL,
  Complexo_Aeoportuario_Complexo_Aeoportuario SERIAL NOT NULL,
  idEdif_Constr_Aeroportuaria MULTIPOINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Constr_Aeroportuaria),
  INDEX Edif_Constr_Aeroportuaria_FKIndex1(Complexo_Aeoportuario_Complexo_Aeoportuario)
);

CREATE TABLE Faixa_Seguranca (
  Faixa_Seguranca SERIAL NOT NULL,
  idFaixa_Seguranca POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Faixa_Seguranca)
);

CREATE TABLE Pista_Porto_Pouso (
  Pista_Porto_Pouso SERIAL NOT NULL,
  idPista_Porto_Pouso MULTIPOINT NOT NULL AUTO_INCREMENT,
  Complexo_Aeoportuario_Complexo_Aeoportuario SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Pista_Porto_Pouso),
  INDEX Pista_Porto_Pouso_FKIndex1(Complexo_Aeoportuario_Complexo_Aeoportuario)
);


