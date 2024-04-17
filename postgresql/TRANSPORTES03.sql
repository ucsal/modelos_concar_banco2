CREATE TABLE Arruamento (
  Arruamento SERIAL PRIMARY KEY,
  idArruamento TEXT NOT NULL,
  Trecho_Ferroviario_Trecho_Ferroviario INTEGER NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Trecho_Ferroviario_Trecho_Ferroviario) REFERENCES Trecho_Ferroviario(Trecho_Ferroviario)
);

CREATE TABLE Cremalheira (
  Cremalheira SERIAL PRIMARY KEY,
  idCremalheira TEXT NOT NULL,
  Trecho_Ferroviario_Trecho_Ferroviario INTEGER NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Trecho_Ferroviario_Trecho_Ferroviario) REFERENCES Trecho_Ferroviario(Trecho_Ferroviario)
);

CREATE TABLE Edif_Metro_Ferroviaria (
  Edif_Metro_Ferroviaria_2 SERIAL PRIMARY KEY,
  idEdif_Metro_Ferroviaria TEXT NOT NULL,
  Desc_2 INTEGER
);

CREATE TABLE Entrontamento (
  Ponto_Ferroviario_Ponto_Ferroviario INTEGER NOT NULL,
  Entrontamento SERIAL PRIMARY KEY,
  idEntrontamento TEXT NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Ponto_Ferroviario_Ponto_Ferroviario) REFERENCES Ponto_Ferroviario(Ponto_Ferroviario)
);

CREATE TABLE Estrut_Apoio (
  Estrut_Apoio SERIAL PRIMARY KEY,
  idEstrut_Apoio TEXT NOT NULL,
  Edif_Metro_Ferroviaria_2 INTEGER NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Edif_Metro_Ferroviaria_2) REFERENCES Edif_Metro_Ferroviaria(Edif_Metro_Ferroviaria_2)
);

CREATE TABLE Faixa_Seguranca (
  Faixa_Seguranca SERIAL PRIMARY KEY,
  idFaixa_Seguranca TEXT NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Galeria_Bueiro (
  Galeria_Bueiro SERIAL PRIMARY KEY,
  idGaleria_Bueiro TEXT NOT NULL,
  Trecho_Ferroviario_Trecho_Ferroviario INTEGER NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Trecho_Ferroviario_Trecho_Ferroviario) REFERENCES Trecho_Ferroviario(Trecho_Ferroviario)
);

CREATE TABLE Girador_Ferrov (
  Girador_Ferrov SERIAL PRIMARY KEY,
  idGirador_Ferrov TEXT NOT NULL,
  Estrut_Apoio_Estrut_Apoio INTEGER NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Estrut_Apoio_Estrut_Apoio) REFERENCES Estrut_Apoio(Estrut_Apoio)
);

CREATE TABLE Passagem_Elev_Viaduto (
  Passagem_Elev_Viaduto SERIAL PRIMARY KEY,
  Trecho_Ferroviario_Trecho_Ferroviario INTEGER NOT NULL,
  idPassagem_Elev_Viaduto TEXT NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Trecho_Ferroviario_Trecho_Ferroviario) REFERENCES Trecho_Ferroviario(Trecho_Ferroviario)
);

CREATE TABLE Patio (
  Patio SERIAL PRIMARY KEY,
  idPatio TEXT NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Ponte (
  Ponte SERIAL PRIMARY KEY,
  idPonte TEXT NOT NULL,
  Trecho_Ferroviario_Trecho_Ferroviario INTEGER NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Trecho_Ferroviario_Trecho_Ferroviario) REFERENCES Trecho_Ferroviario(Trecho_Ferroviario)
);

CREATE TABLE Ponto_Ferroviario (
  Ponto_Ferroviario SERIAL PRIMARY KEY,
  Patio_Patio INTEGER NOT NULL,
  idPonto_Ferroviario TEXT NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Patio_Patio) REFERENCES Patio(Patio)
);

CREATE TABLE Travessia_Pedestre (
  Travessia_Pedestre SERIAL PRIMARY KEY,
  idTravessia_Pedestre TEXT NOT NULL,
  Trecho_Ferroviario_Trecho_Ferroviario INTEGER NOT NULL,
  Desc_2 TEXT,
  FOREIGN KEY (Trecho_Ferroviario_Trecho_Ferroviario) REFERENCES Trecho_Ferroviario(Trecho_Ferroviario)
);

CREATE TABLE Trecho_Ferroviario (
  Trecho_Ferroviario SERIAL PRIMARY KEY,
  Tunel_Tunel INTEGER NOT NULL,
  Ponto_Ferroviario_Ponto_Ferroviario INTEGER NOT NULL,
  idTrecho_Ferroviario TEXT NOT NULL,
  Via_Ferrea_Via_Ferrea INTEGER NOT NULL,
  Faixa_Seguranca_Faixa_Seguranca INTEGER NOT NULL,
  Estrut_Apoio_Estrut_Apoio INTEGER NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Tunel (
  Tunel SERIAL PRIMARY KEY,
  idTunel TEXT NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Via_Ferrea (
  Via_Ferrea SERIAL PRIMARY KEY,
  idVia_Ferrea TEXT NOT NULL,
  Desc_2 TEXT
);
