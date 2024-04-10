CREATE TABLE Area_Estrut_Transporte (
  Area_Estrut_Transporte SERIAL PRIMARY KEY,
  idArea_Estrut_Transporte POLYGON NOT NULL,
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Estrut_Transporte_Estrut_Transporte) REFERENCES Estrut_Transporte(Estrut_Transporte)
);

CREATE TABLE Caminho_Aereo (
  Caminho_Aereo SERIAL PRIMARY KEY,
  Estrut_Apoio_Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Estrut_Apoio_Estrut_Apoio SERIAL NOT NULL,
  idCaminho_Aereo LINESTRING NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Estrut_Apoio_Estrut_Apoio, Estrut_Apoio_Estrut_Transporte_Estrut_Transporte) 
    REFERENCES Estrut_Apoio(Estrut_Apoio, Estrut_Transporte_Estrut_Transporte)
);

CREATE TABLE Complexo_Aero_Portuario (
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Complexo_Aero_Portuario SERIAL PRIMARY KEY,
  idComplexo_Aero_Portuario MULTIPOLYGON NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Estrut_Transporte_Estrut_Transporte) REFERENCES Estrut_Transporte(Estrut_Transporte)
);

CREATE TABLE Complexo_Portuario (
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Complexo_Portuario SERIAL PRIMARY KEY,
  idComplexo_Portuario MULTIPOLYGON NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Estrut_Transporte_Estrut_Transporte) REFERENCES Estrut_Transporte(Estrut_Transporte)
);

CREATE TABLE Deposito_Geral (
  Deposito_Geral SERIAL PRIMARY KEY,
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  idDeposito_Geral MULTIPOINT NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Estrut_Transporte_Estrut_Transporte) REFERENCES Estrut_Transporte(Estrut_Transporte)
);

CREATE TABLE Entrocamento (
  Entrocamento SERIAL PRIMARY KEY,
  idEntrocamento POINT NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Estrut_Apoio (
  Estrut_Apoio SERIAL,
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Faixa_Seguranca_Faixa_Seguranca SERIAL NOT NULL,
  idEstrut_Apoio MULTIPOLYGON NOT NULL,
  Desc_2 TEXT,
  PRIMARY KEY (Estrut_Apoio, Estrut_Transporte_Estrut_Transporte),
  FOREIGN KEY (Estrut_Transporte_Estrut_Transporte) REFERENCES Estrut_Transporte(Estrut_Transporte),
  FOREIGN KEY (Faixa_Seguranca_Faixa_Seguranca) REFERENCES Faixa_Seguranca(Faixa_Seguranca)
);

CREATE TABLE Estrut_Transporte (
  Estrut_Transporte SERIAL PRIMARY KEY,
  idEstrut_Transporte POINT NOT NULL
);

CREATE TABLE Faixa_Seguranca (
  Faixa_Seguranca SERIAL PRIMARY KEY,
  idFaixa_Seguranca POLYGON NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Funicular (
  Funicular SERIAL PRIMARY KEY,
  Estrut_Apoio_Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  Estrut_Apoio_Estrut_Apoio SERIAL NOT NULL,
  idFunicular MULTIPOINT NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Estrut_Apoio_Estrut_Apoio, Estrut_Apoio_Estrut_Transporte_Estrut_Transporte)
    REFERENCES Estrut_Apoio(Estrut_Apoio, Estrut_Transporte_Estrut_Transporte)
);

CREATE TABLE Galeria_Bueiro (
  Galeria_Bueiro SERIAL PRIMARY KEY,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  idGaleria_Bueiro MULTIPOINT NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Trecho_Curso_Dagua_Trecho_Curso_Dagua) REFERENCES Trecho_Curso_Dagua(Trecho_Curso_Dagua)
);

CREATE TABLE Passagem_Elevada_Viaduto (
  Passagem_Elevada_Viaduto SERIAL PRIMARY KEY,
  idPassagem_Elevada_Viaduto MULTIPOINT NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Patio (
  Patio SERIAL PRIMARY KEY,
  Estrut_Transporte_Estrut_Transporte SERIAL NOT NULL,
  idPatio MULTIPOINT NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Estrut_Transporte_Estrut_Transporte) REFERENCES Estrut_Transporte(Estrut_Transporte)
);

CREATE TABLE Ponte (
  Ponte SERIAL PRIMARY KEY,
  idPonte MULTIPOINT NOT NULL,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Trecho_Curso_Dagua_Trecho_Curso_Dagua) REFERENCES Trecho_Curso_Dagua(Trecho_Curso_Dagua)
);

CREATE TABLE Travessia (
  Travessia SERIAL PRIMARY KEY,
  idTravessia MULTIPOINT NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Travessia_Pedestre (
  Travessia_Pedestre SERIAL PRIMARY KEY,
  idTravessia_Pedestre MULTIPOINT NOT NULL,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Trecho_Curso_Dagua_Trecho_Curso_Dagua) REFERENCES Trecho_Curso_Dagua(Trecho_Curso_Dagua)
);

CREATE TABLE Trecho_Curso_Dagua (
  Trecho_Curso_Dagua SERIAL PRIMARY KEY,
  idTrecho_Curso_Dagua MULTIPOLYGON NOT NULL,
  Travessia_Travessia SERIAL NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Travessia_Travessia) REFERENCES Travessia(Travessia)
);

CREATE TABLE Tunel (
  Tunel SERIAL PRIMARY KEY,
  idTunel MULTIPOINT NOT NULL,
  Desc_2 TEXT
);
