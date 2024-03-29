CREATE TABLE Area_Est_Mec_Fenomenos (
  Area_Est_Mec_Fenomenos SERIAL NOT NULL,
  Est_Med_Fenomenos_Est_Med_Fenomenos SERIAL NOT NULL,
  idArea_Est_Mec_Fenomenos POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Est_Mec_Fenomenos),
  INDEX Area_Est_Mec_Fenomenos_FKIndex1(Est_Med_Fenomenos_Est_Med_Fenomenos)
);

CREATE TABLE Edif_Constr_Est_Med_Fem (
  Edif_Constr_Est_Med_Fem SERIAL NOT NULL,
  idEdif_Constr_Est_Med_Fem MULTIPOINT NOT NULL AUTO_INCREMENT,
  Est_Med_Fenomenos_Est_Med_Fenomenos SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Edif_Constr_Est_Med_Fem),
  INDEX Edif_Constr_Est_Med_Fem_FKIndex1(Est_Med_Fenomenos_Est_Med_Fenomenos)
);

CREATE TABLE Est_Med_Fenomenos (
  Est_Med_Fenomenos SERIAL NOT NULL,
  Est_Med_Fenomenos_Est_Med_Fenomenos SERIAL NOT NULL,
  idEst_Med_Fenomenos POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Est_Med_Fenomenos),
  INDEX Est_Med_Fenomenos_FKIndex1(Est_Med_Fenomenos_Est_Med_Fenomenos)
);

CREATE TABLE Ponto_Cotado_Altimetrico (
  Ponto_Cotado_Altimetrico SERIAL NOT NULL,
  Pto_Controle_Pto_Controle SERIAL NOT NULL,
  Pto_Controle_Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle SERIAL NOT NULL,
  Pto_Ref_Geod_Topo_Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle SERIAL NOT NULL,
  idPonto_Cotado_Altimetrico POINT NOT NULL AUTO_INCREMENT,
  Pto_Ref_Geod_Topo_2 SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Ponto_Cotado_Altimetrico),
  INDEX Ponto_Cotado_Altimetrico_FKIndex1(Pto_Ref_Geod_Topo_2, Pto_Ref_Geod_Topo_Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle),
  INDEX Ponto_Cotado_Altimetrico_FKIndex2(Pto_Controle_Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle, Pto_Controle_Pto_Controle)
);

CREATE TABLE Pto_Controle (
  Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle SERIAL NOT NULL,
  Pto_Controle SERIAL NOT NULL,
  idPto_Controle POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle, Pto_Controle),
  INDEX Pto_Controle_FKIndex1(Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle)
);

CREATE TABLE Pto_Est_Med_Fenomenos (
  Pto_Est_Med_Fenomenos SERIAL NOT NULL,
  idPto_Est_Med_Fenomenos POINT NOT NULL AUTO_INCREMENT,
  Est_Med_Fenomenos_Est_Med_Fenomenos SERIAL NOT NULL,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Pto_Est_Med_Fenomenos),
  INDEX Pto_Est_Med_Fenomenos_FKIndex1(Trecho_Curso_Dagua_Trecho_Curso_Dagua),
  INDEX Pto_Est_Med_Fenomenos_FKIndex2(Est_Med_Fenomenos_Est_Med_Fenomenos)
);

CREATE TABLE Pto_Geod_Topo_Controle (
  Pto_Geod_Topo_Controle SERIAL NOT NULL,
  idPto_Geod_Topo_Controle POINT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY(Pto_Geod_Topo_Controle)
);

CREATE TABLE Pto_Ref_Geod_Topo (
  Pto_Ref_Geod_Topo_2 SERIAL NOT NULL,
  Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle SERIAL NOT NULL,
  Pto_Controle_Pto_Controle SERIAL NOT NULL,
  Pto_Controle_Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle SERIAL NOT NULL,
  idPto_Ref_Geod_Topo POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  Pto_Ref_Geod_Topo INTEGER UNSIGNED NULL,
  PRIMARY KEY(Pto_Ref_Geod_Topo_2, Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle),
  INDEX Pto_Ref_Geod_Topo_FKIndex1(Pto_Controle_Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle, Pto_Controle_Pto_Controle),
  INDEX Pto_Ref_Geod_Topo_FKIndex2(Pto_Geod_Topo_Controle_Pto_Geod_Topo_Controle)
);

CREATE TABLE Trecho_Curso_Dagua (
  Trecho_Curso_Dagua SERIAL NOT NULL,
  idTrecho_Curso_Dagua POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Curso_Dagua)
);


