CREATE TABLE Area_De_Litigio (
  Area_De_Litigio SERIAL NOT NULL,
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Limite_Positico_Administrativo_Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Positico_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  idArea_De_Litigio POLYGON NOT NULL AUTO_INCREMENT,
  Limite_Positico_Administrativo_Limite_Positico_Administrativo SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_De_Litigio, Area_Politico_Administrativa_Area_Politico_Administrativa),
  INDEX Area_De_Litigio_FKIndex1(Limite_Positico_Administrativo_Limite_Positico_Administrativo, Limite_Positico_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Limite_Positico_Administrativo_Linha_De_Limite_Linha_De_Limite),
  INDEX Area_De_Litigio_FKIndex2(Area_Politico_Administrativa_Area_Politico_Administrativa)
);

CREATE TABLE Area_de_Propriedade_Particular (
  Area_de_Propriedade_Particular SERIAL NOT NULL,
  idArea_de_Propriedade_Particular POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_de_Propriedade_Particular)
);

CREATE TABLE Area_Politico_Administrativa (
  Area_Politico_Administrativa SERIAL NOT NULL,
  Localidade_Localidade SERIAL NOT NULL,
  Outros_Limites_Oficiais_Outros_Limites_Oficiais SERIAL NOT NULL,
  idArea_Politico_Administrativa POINT NOT NULL AUTO_INCREMENT,
  Limite_Operacional_Limite_Operacional SERIAL NOT NULL,
  Outros_Limites_Oficiais_Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Operacional_Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Limite_Intra_Municipal_Administrativo SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Positico_Administrativo_Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Outros_Limites_Oficiais_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Limite_Operacional_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Limite_Positico_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Limite_Positico_Administrativo_Limite_Positico_Administrativo SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Politico_Administrativa),
  INDEX Area_Politico_Administrativa_FKIndex1(Limite_Positico_Administrativo_Limite_Positico_Administrativo, Limite_Positico_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Limite_Positico_Administrativo_Linha_De_Limite_Linha_De_Limite),
  INDEX Area_Politico_Administrativa_FKIndex2(Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Linha_De_Limite, Limite_Intra_Municipal_Administrativo_Limite_Intra_Municipal_Administrativo),
  INDEX Area_Politico_Administrativa_FKIndex3(Limite_Operacional_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Limite_Operacional_Linha_De_Limite_Linha_De_Limite, Limite_Operacional_Limite_Operacional),
  INDEX Area_Politico_Administrativa_FKIndex4(Outros_Limites_Oficiais_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Outros_Limites_Oficiais_Linha_De_Limite_Linha_De_Limite, Outros_Limites_Oficiais_Outros_Limites_Oficiais),
  INDEX Area_Politico_Administrativa_FKIndex5(Localidade_Localidade)
);

CREATE TABLE Bairro (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Bairro SERIAL NOT NULL,
  Cidade_Cidade SERIAL NOT NULL,
  idBairro POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Bairro),
  INDEX Bairro_FKIndex1(Area_Politico_Administrativa_Area_Politico_Administrativa),
  INDEX Bairro_FKIndex2(Cidade_Cidade)
);

CREATE TABLE Cidade (
  Cidade SERIAL NOT NULL,
  idCidade MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Limite_Intra_Municipal_Administrativo_Limite_Intra_Municipal_Administrativo SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Cidade),
  INDEX Cidade_FKIndex1(Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Linha_De_Limite, Limite_Intra_Municipal_Administrativo_Limite_Intra_Municipal_Administrativo)
);

CREATE TABLE Delimitacao_Fisica (
  Delimitacao_Fisica SERIAL NOT NULL,
  idDelimitacao_Fisica LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Delimitacao_Fisica)
);

CREATE TABLE Distrito (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Distrito SERIAL NOT NULL,
  idDistrito POLYGON NOT NULL AUTO_INCREMENT,
  Municipio_Municipio SERIAL NOT NULL,
  Municipio_Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Distrito),
  INDEX Distrito_FKIndex1(Area_Politico_Administrativa_Area_Politico_Administrativa),
  INDEX Distrito_FKIndex2(Municipio_Area_Politico_Administrativa_Area_Politico_Administrativa, Municipio_Municipio)
);

CREATE TABLE Limite_Area_Especial (
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Area_Especial SERIAL NOT NULL,
  idLimite_Area_Especial LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite, Limite_Area_Especial),
  INDEX Limite_Area_Especial_FKIndex1(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite)
);

CREATE TABLE Limite_Intra_Municipal_Administrativo (
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo SERIAL NOT NULL,
  idLimite_Intra_Municipal_Administrativo LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite, Limite_Intra_Municipal_Administrativo),
  INDEX Limite_Intra_Municipal_Administrativo_FKIndex1(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite)
);

CREATE TABLE Limite_Operacional (
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Operacional SERIAL NOT NULL,
  idLimite_Operacional LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite, Limite_Operacional),
  INDEX Limite_Operacional_FKIndex1(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite)
);

CREATE TABLE Limite_Particular (
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Particular SERIAL NOT NULL,
  idLimite_Particular LINESTRING NOT NULL AUTO_INCREMENT,
  Area_de_Propriedade_Particular_Area_de_Propriedade_Particular SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite, Limite_Particular),
  INDEX Limite_Particular_FKIndex1(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite),
  INDEX Limite_Particular_FKIndex2(Area_de_Propriedade_Particular_Area_de_Propriedade_Particular)
);

CREATE TABLE Limite_Positico_Administrativo (
  Limite_Positico_Administrativo SERIAL NOT NULL,
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  idLimite_Positico_Administrativo LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Limite_Positico_Administrativo, Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite),
  INDEX Limite_Positico_Administrativo_FKIndex1(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite)
);

CREATE TABLE Linha_De_Limite (
  Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite SERIAL NOT NULL,
  idLinha_De_Limite LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite),
  INDEX Linha_De_Limite_FKIndex1(Delimitacao_Fisica_Delimitacao_Fisica)
);

CREATE TABLE Localidade (
  Localidade SERIAL NOT NULL,
  idLocalidade POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Localidade)
);

CREATE TABLE Marco_De_Limite (
  Marco_De_Limite SERIAL NOT NULL,
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  idMarco_De_Limite POINT NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Marco_De_Limite, Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite),
  INDEX Marco_De_Limite_FKIndex1(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite)
);

CREATE TABLE Massa_Dagua (
  Massa_Dagua SERIAL NOT NULL,
  idMassa_Dagua POLYGON NOT NULL AUTO_INCREMENT,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Massa_Dagua),
  INDEX Massa_Dagua_FKIndex1(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite)
);

CREATE TABLE Municipio (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Municipio SERIAL NOT NULL,
  idMunicipio POLYGON NOT NULL AUTO_INCREMENT,
  Unidade_Federacao_Unidade_Federacao SERIAL NOT NULL,
  Unidade_Federacao_Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Municipio),
  INDEX Municipio_FKIndex1(Area_Politico_Administrativa_Area_Politico_Administrativa),
  INDEX Municipio_FKIndex2(Unidade_Federacao_Area_Politico_Administrativa_Area_Politico_Administrativa, Unidade_Federacao_Unidade_Federacao)
);

CREATE TABLE Nome_Local (
  Nome_Local SERIAL NOT NULL,
  Municipio_Municipio SERIAL NOT NULL,
  idNome_Local POINT NOT NULL AUTO_INCREMENT,
  Municipio_Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Nome_Local),
  INDEX Nome_Local_FKIndex1(Municipio_Area_Politico_Administrativa_Area_Politico_Administrativa, Municipio_Municipio)
);

CREATE TABLE Outros_Limites_Oficiais (
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Outros_Limites_Oficiais SERIAL NOT NULL,
  idOutros_Limites_Oficiais LINESTRING NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite, Outros_Limites_Oficiais),
  INDEX Outros_Limites_Oficiais_FKIndex1(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite)
);

CREATE TABLE Pais (
  Pais SERIAL NOT NULL,
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  idPais POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Pais, Area_Politico_Administrativa_Area_Politico_Administrativa),
  INDEX Pais_FKIndex1(Area_Politico_Administrativa_Area_Politico_Administrativa)
);

CREATE TABLE Regiao_Administrativa (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Regiao_Administrativa SERIAL NOT NULL,
  Cidade_Cidade SERIAL NOT NULL,
  idRegiao_Administrativa POLYGON NOT NULL AUTO_INCREMENT,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Regiao_Administrativa),
  INDEX Regiao_Administrativa_FKIndex1(Area_Politico_Administrativa_Area_Politico_Administrativa),
  INDEX Regiao_Administrativa_FKIndex2(Cidade_Cidade)
);

CREATE TABLE Sub_Distrito (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Sub_Distrito SERIAL NOT NULL,
  idSub_Distrito POLYGON NOT NULL AUTO_INCREMENT,
  Distrito_Distrito SERIAL NOT NULL,
  Distrito_Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Sub_Distrito),
  INDEX Sub_Distrito_FKIndex1(Area_Politico_Administrativa_Area_Politico_Administrativa),
  INDEX Sub_Distrito_FKIndex2(Distrito_Area_Politico_Administrativa_Area_Politico_Administrativa, Distrito_Distrito)
);

CREATE TABLE Trecho_Curso_Dagua (
  Trecho_Curso_Dagua SERIAL NOT NULL,
  idTrecho_Curso_Dagua POLYGON NOT NULL AUTO_INCREMENT,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Trecho_Curso_Dagua),
  INDEX Trecho_Curso_Dagua_FKIndex1(Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Linha_De_Limite_Linha_De_Limite)
);

CREATE TABLE Unidade_Federacao (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Unidade_Federacao SERIAL NOT NULL,
  Pais_Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  idUnidade_Federacao POLYGON NOT NULL AUTO_INCREMENT,
  Pais_Pais SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Unidade_Federacao),
  INDEX Unidade_Federacao_FKIndex1(Area_Politico_Administrativa_Area_Politico_Administrativa),
  INDEX Unidade_Federacao_FKIndex2(Pais_Pais, Pais_Area_Politico_Administrativa_Area_Politico_Administrativa)
);

CREATE TABLE Vila (
  Vila SERIAL NOT NULL,
  idVila MULTIPOLYGON NOT NULL AUTO_INCREMENT,
  Limite_Intra_Municipal_Administrativo_Limite_Intra_Municipal_Administrativo SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Desc_2 TEXT NULL,
  PRIMARY KEY(Vila),
  INDEX Vila_FKIndex1(Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica, Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Linha_De_Limite, Limite_Intra_Municipal_Administrativo_Limite_Intra_Municipal_Administrativo)
);


