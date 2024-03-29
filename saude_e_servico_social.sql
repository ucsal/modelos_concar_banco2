CREATE TABLE Area_Saude (
  Area_Saude SERIAL NOT NULL,
  Org_Saude_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Org_Saude_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  idArea_Saude POLYGON NOT NULL AUTO_INCREMENT,
  Org_Saude_Org_Saude SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Saude),
  INDEX Area_Saude_FKIndex1(Org_Saude_Org_Saude, Org_Saude_Org_Pub_Civil_Org_Pub_Civil, Org_Saude_Org_Religiosa_Org_Religiosa)
);

CREATE TABLE Area_Servico_Social (
  Area_Servico_Social SERIAL NOT NULL,
  Org_Servico_Social_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  idArea_Servico_Social POLYGON NOT NULL AUTO_INCREMENT,
  Org_Servico_Social_Org_Servico_Social SERIAL NOT NULL,
  Org_Servico_Social_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Servico_Social),
  INDEX Area_Servico_Social_FKIndex1(Org_Servico_Social_Org_Pub_Civil_Org_Pub_Civil, Org_Servico_Social_Org_Servico_Social, Org_Servico_Social_Org_Religiosa_Org_Religiosa)
);

CREATE TABLE Edif_Saude (
  Edif_Saude SERIAL NOT NULL,
  Org_Saude_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  Org_Saude_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  idEdif_Saude MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Saude_Org_Saude SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Saude),
  INDEX Edif_Saude_FKIndex1(Org_Saude_Org_Saude, Org_Saude_Org_Pub_Civil_Org_Pub_Civil, Org_Saude_Org_Religiosa_Org_Religiosa)
);

CREATE TABLE Edif_Servico_Social (
  Edif_Servico_Social SERIAL NOT NULL,
  Org_Servico_Social_Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  idEdif_Servico_Social MULTIPOINT NOT NULL AUTO_INCREMENT,
  Org_Servico_Social_Org_Servico_Social SERIAL NOT NULL,
  Org_Servico_Social_Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Servico_Social),
  INDEX Edif_Servico_Social_FKIndex1(Org_Servico_Social_Org_Pub_Civil_Org_Pub_Civil, Org_Servico_Social_Org_Servico_Social, Org_Servico_Social_Org_Religiosa_Org_Religiosa)
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
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Religiosa)
);

CREATE TABLE Org_Saude (
  Org_Saude SERIAL NOT NULL,
  Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  idOrg_Saude MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Org_Pub_Militar_Org_Pub_Militar SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Saude, Org_Pub_Civil_Org_Pub_Civil, Org_Religiosa_Org_Religiosa),
  INDEX Org_Saude_FKIndex1(Org_Pub_Militar_Org_Pub_Militar),
  INDEX Org_Saude_FKIndex2(Org_Pub_Civil_Org_Pub_Civil),
  INDEX Org_Saude_FKIndex3(Org_Religiosa_Org_Religiosa)
);

CREATE TABLE Org_Servico_Social (
  Org_Pub_Civil_Org_Pub_Civil SERIAL NOT NULL,
  Org_Servico_Social SERIAL NOT NULL,
  Org_Religiosa_Org_Religiosa SERIAL NOT NULL,
  idOrg_Servico_Social MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Org_Pub_Civil_Org_Pub_Civil, Org_Servico_Social, Org_Religiosa_Org_Religiosa),
  INDEX Org_Servico_Social_FKIndex1(Org_Pub_Civil_Org_Pub_Civil),
  INDEX Org_Servico_Social_FKIndex2(Org_Religiosa_Org_Religiosa)
);


