CREATE TABLE Area_De_Litigio (
  Area_De_Litigio SERIAL PRIMARY KEY,
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Limite_Positico_Administrativo_Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Positico_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  idArea_De_Litigio POLYGON NOT NULL,
  Limite_Positico_Administrativo_Limite_Positico_Administrativo SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Area_de_Propriedade_Particular (
  Area_de_Propriedade_Particular SERIAL PRIMARY KEY,
  idArea_de_Propriedade_Particular POLYGON NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Area_Politico_Administrativa (
  Area_Politico_Administrativa SERIAL PRIMARY KEY,
  Localidade_Localidade SERIAL NOT NULL,
  Outros_Limites_Oficiais_Outros_Limites_Oficiais SERIAL NOT NULL,
  idArea_Politico_Administrativa POINT NOT NULL,
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
  Desc_2 TEXT
);

CREATE TABLE Bairro (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Bairro SERIAL NOT NULL,
  Cidade_Cidade SERIAL NOT NULL,
  idBairro POLYGON NOT NULL,
  Desc_2 TEXT,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Bairro)
);

CREATE TABLE Cidade (
  Cidade SERIAL PRIMARY KEY,
  idCidade MULTIPOLYGON NOT NULL,
  Limite_Intra_Municipal_Administrativo_Limite_Intra_Municipal_Administrativo SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Delimitacao_Fisica (
  Delimitacao_Fisica SERIAL PRIMARY KEY,
  idDelimitacao_Fisica LINESTRING NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Distrito (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Distrito SERIAL NOT NULL,
  idDistrito POLYGON NOT NULL,
  Municipio_Municipio SERIAL NOT NULL,
  Municipio_Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Desc_2 TEXT,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Distrito)
);

CREATE TABLE Limite_Area_Especial (
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Area_Especial SERIAL PRIMARY KEY,
  idLimite_Area_Especial LINESTRING NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Limite_Intra_Municipal_Administrativo (
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo SERIAL PRIMARY KEY,
  idLimite_Intra_Municipal_Administrativo LINESTRING NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Limite_Operacional (
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Operacional SERIAL PRIMARY KEY,
  idLimite_Operacional LINESTRING NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Limite_Particular (
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Particular SERIAL PRIMARY KEY,
  idLimite_Particular LINESTRING NOT NULL,
  Area_de_Propriedade_Particular_Area_de_Propriedade_Particular SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Limite_Positico_Administrativo (
  Limite_Positico_Administrativo SERIAL PRIMARY KEY,
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  idLimite_Positico_Administrativo LINESTRING NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Linha_De_Limite (
  Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite SERIAL PRIMARY KEY,
  idLinha_De_Limite LINESTRING NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Localidade (
  Localidade SERIAL PRIMARY KEY,
  idLocalidade POINT NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Marco_De_Limite (
  Marco_De_Limite SERIAL PRIMARY KEY,
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  idMarco_De_Limite POINT NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Massa_Dagua (
  Massa_Dagua SERIAL PRIMARY KEY,
  idMassa_Dagua POLYGON NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Municipio (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Municipio SERIAL NOT NULL,
  idMunicipio POLYGON NOT NULL,
  Unidade_Federacao_Unidade_Federacao SERIAL NOT NULL,
  Unidade_Federacao_Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Desc_2 TEXT,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Municipio)
);

CREATE TABLE Nome_Local (
  Nome_Local SERIAL PRIMARY KEY,
  Municipio_Municipio SERIAL NOT NULL,
  idNome_Local POINT NOT NULL,
  Municipio_Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Outros_Limites_Oficiais (
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Outros_Limites_Oficiais SERIAL PRIMARY KEY,
  idOutros_Limites_Oficiais LINESTRING NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Pais (
  Pais SERIAL PRIMARY KEY,
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  idPais POLYGON NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Regiao_Administrativa (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Regiao_Administrativa SERIAL NOT NULL,
  Cidade_Cidade SERIAL NOT NULL,
  idRegiao_Administrativa POLYGON NOT NULL,
  Desc_2 TEXT,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Regiao_Administrativa)
);

CREATE TABLE Sub_Distrito (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Sub_Distrito SERIAL NOT NULL,
  idSub_Distrito POLYGON NOT NULL,
  Distrito_Distrito SERIAL NOT NULL,
  Distrito_Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Desc_2 TEXT,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Sub_Distrito)
);

CREATE TABLE Trecho_Curso_Dagua (
  Trecho_Curso_Dagua SERIAL PRIMARY KEY,
  idTrecho_Curso_Dagua POLYGON NOT NULL,
  Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Unidade_Federacao (
  Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  Unidade_Federacao SERIAL NOT NULL,
  Pais_Area_Politico_Administrativa_Area_Politico_Administrativa SERIAL NOT NULL,
  idUnidade_Federacao POLYGON NOT NULL,
  Pais_Pais SERIAL NOT NULL,
  Desc_2 TEXT,
  PRIMARY KEY(Area_Politico_Administrativa_Area_Politico_Administrativa, Unidade_Federacao)
);

CREATE TABLE Vila (
  Vila SERIAL PRIMARY KEY,
  idVila MULTIPOLYGON NOT NULL,
  Limite_Intra_Municipal_Administrativo_Limite_Intra_Municipal_Administrativo SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Linha_De_Limite SERIAL NOT NULL,
  Limite_Intra_Municipal_Administrativo_Linha_De_Limite_Delimitacao_Fisica_Delimitacao_Fisica SERIAL NOT NULL,
  Desc_2 TEXT
);
