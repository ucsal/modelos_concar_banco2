CREATE TABLE Area_Umida (
  Area_Umida SERIAL PRIMARY KEY,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  idArea_Umida SERIAL NOT NULL,
  Desc_2 TEXT,
  CONSTRAINT fk_area_umida FOREIGN KEY (Massa_Dagua_Massa_Dagua) REFERENCES Massa_Dagua(Massa_Dagua)
);

CREATE TABLE Bacia_Hidrografica (
  Bacia_Hidrografica SERIAL PRIMARY KEY,
  idBacia_Hidrografica SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Banco_Areia (
  Banco_Areia SERIAL PRIMARY KEY,
  idBanco_Areia SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Barragem (
  Barragem SERIAL PRIMARY KEY,
  idBarragem SERIAL NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  Desc_2 TEXT,
  CONSTRAINT fk_barragem FOREIGN KEY (Massa_Dagua_Massa_Dagua) REFERENCES Massa_Dagua(Massa_Dagua)
);

CREATE TABLE Comporta (
  Comporta SERIAL PRIMARY KEY,
  idComporta SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Confluencia (
  Ponto_Drenagem_Ponto_Drenagem SERIAL NOT NULL,
  Confluencia SERIAL NOT NULL,
  idConfluencia SERIAL NOT NULL,
  Desc_2 TEXT,
  PRIMARY KEY(Ponto_Drenagem_Ponto_Drenagem, Confluencia),
  CONSTRAINT fk_confluencia FOREIGN KEY (Ponto_Drenagem_Ponto_Drenagem) REFERENCES Ponto_Drenagem(Ponto_Drenagem)
);

CREATE TABLE Corredeira (
  Corredeira SERIAL PRIMARY KEY,
  idCorredeira SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Curso_Dagua (
  Curso_Dagua SERIAL PRIMARY KEY,
  idCurso_Dagua SERIAL NOT NULL,
  Bacia_Hidrografica_Bacia_Hidrografica SERIAL NOT NULL,
  Desc_2 TEXT,
  CONSTRAINT fk_curso_dagua FOREIGN KEY (Bacia_Hidrografica_Bacia_Hidrografica) REFERENCES Bacia_Hidrografica(Bacia_Hidrografica)
);

CREATE TABLE Eclusa (
  Eclusa SERIAL PRIMARY KEY,
  idEclusa SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Fonte_Dagua (
  Fonte_Dagua SERIAL PRIMARY KEY,
  idFonte_Dagua SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Foz_Maritima (
  Foz_Maritima SERIAL PRIMARY KEY,
  idFoz_Maritima SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Ilha (
  Ilha SERIAL PRIMARY KEY,
  idIlha SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Limite_Massa_Dagua (
  Limite_Massa_Dagua SERIAL PRIMARY KEY,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  idLimite_Massa_Dagua SERIAL NOT NULL,
  Desc_2 TEXT,
  CONSTRAINT fk_limite_massa_dagua FOREIGN KEY (Massa_Dagua_Massa_Dagua) REFERENCES Massa_Dagua(Massa_Dagua)
);

CREATE TABLE Massa_Dagua (
  Massa_Dagua SERIAL PRIMARY KEY,
  Bacia_Hidrografica_Bacia_Hidrografica SERIAL NOT NULL,
  idMassa_Dagua SERIAL NOT NULL,
  Reservatorio_Hidrico_Reservatorio_Hidrico SERIAL NOT NULL,
  Natureza_Fundo_Natureza_Fundo SERIAL NOT NULL,
  Ilha_Ilha SERIAL NOT NULL,
  Rocha_Em_Agua_Rocha_Em_Agua SERIAL NOT NULL,
  Recife_Recife SERIAL NOT NULL,
  Banco_Areia_Banco_Areia SERIAL NOT NULL,
  Quebramar_Molhe_Quebramar_Molhe SERIAL NOT NULL,
  Desc_2 TEXT,
  CONSTRAINT fk_massa_dagua_bh FOREIGN KEY (Bacia_Hidrografica_Bacia_Hidrografica) REFERENCES Bacia_Hidrografica(Bacia_Hidrografica),
  CONSTRAINT fk_massa_dagua_rh FOREIGN KEY (Reservatorio_Hidrico_Reservatorio_Hidrico) REFERENCES Reservatorio_Hidrico(Reservatorio_Hidrico),
  CONSTRAINT fk_massa_dagua_nf FOREIGN KEY (Natureza_Fundo_Natureza_Fundo) REFERENCES Natureza_Fundo(Natureza_Fundo),
  CONSTRAINT fk_massa_dagua_ilha FOREIGN KEY (Ilha_Ilha) REFERENCES Ilha(Ilha),
  CONSTRAINT fk_massa_dagua_ra FOREIGN KEY (Rocha_Em_Agua_Rocha_Em_Agua) REFERENCES Rocha_Em_Agua(Rocha_Em_Agua),
  CONSTRAINT fk_massa_dagua_rc FOREIGN KEY (Recife_Recife) REFERENCES Recife(Recife),
  CONSTRAINT fk_massa_dagua_ba FOREIGN KEY (Banco_Areia_Banco_Areia) REFERENCES Banco_Areia(Banco_Areia),
  CONSTRAINT fk_massa_dagua_qm FOREIGN KEY (Quebramar_Molhe_Quebramar_Molhe) REFERENCES Quebramar_Molhe(Quebramar_Molhe)
);

CREATE TABLE Natureza_Fundo (
  Natureza_Fundo SERIAL PRIMARY KEY,
  idNatureza_Fundo SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Ponto_Drenagem (
  Ponto_Drenagem SERIAL PRIMARY KEY,
  Sumidouro_Vertedouro_Sumidouro_Vertedouro SERIAL NOT NULL,
  Foz_Maritima_Foz_Maritima SERIAL NOT NULL,
  Corredeira_Corredeira SERIAL NOT NULL,
  Queda_Dagua_Queda_Dagua SERIAL NOT NULL,
  Comporta_Comporta SERIAL NOT NULL,
  Barragem_Barragem SERIAL NOT NULL,
  Eclusa_Eclusa SERIAL NOT NULL,
  idPonto_Drenagem SERIAL NOT NULL,
  Desc_2 TEXT,
  CONSTRAINT fk_ponto_drenagem_sv FOREIGN KEY (Sumidouro_Vertedouro_Sumidouro_Vertedouro) REFERENCES Sumidouro_Vertedouro(Sumidouro_Vertedouro),
  CONSTRAINT fk_ponto_drenagem_fm FOREIGN KEY (Foz_Maritima_Foz_Maritima) REFERENCES Foz_Maritima(Foz_Maritima),
  CONSTRAINT fk_ponto_drenagem_cr FOREIGN KEY (Corredeira_Corredeira) REFERENCES Corredeira(Corredeira),
  CONSTRAINT fk_ponto_drenagem_qd FOREIGN KEY (Queda_Dagua_Queda_Dagua) REFERENCES Queda_Dagua(Queda_Dagua),
  CONSTRAINT fk_ponto_drenagem_cp FOREIGN KEY (Comporta_Comporta) REFERENCES Comporta(Comporta),
  CONSTRAINT fk_ponto_drenagem_bg FOREIGN KEY (Barragem_Barragem) REFERENCES Barragem(Barragem),
  CONSTRAINT fk_ponto_drenagem_ec FOREIGN KEY (Eclusa_Eclusa) REFERENCES Eclusa(Eclusa)
);

CREATE TABLE Ponto_Inicio_Drenagem (
  Ponto_Inicio_Drenagem SERIAL PRIMARY KEY,
  Ponto_Drenagem_Ponto_Drenagem SERIAL NOT NULL,
  idPonto_Inicio_Drenagem SERIAL NOT NULL,
  Fonte_Dagua_Fonte_Dagua SERIAL NOT NULL,
  Desc_2 TEXT,
  CONSTRAINT fk_inicio_drenagem_pd FOREIGN KEY (Ponto_Drenagem_Ponto_Drenagem) REFERENCES Ponto_Drenagem(Ponto_Drenagem),
  CONSTRAINT fk_inicio_drenagem_fd FOREIGN KEY (Fonte_Dagua_Fonte_Dagua) REFERENCES Fonte_Dagua(Fonte_Dagua)
);

CREATE TABLE Quebramar_Molhe (
  Quebramar_Molhe SERIAL PRIMARY KEY,
  idQuebramar_Molhe SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Queda_Dagua (
  Queda_Dagua SERIAL PRIMARY KEY,
  idQueda_Dagua SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Recife (
  Recife SERIAL PRIMARY KEY,
  idRecife SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Reservatorio_Hidrico (
  Reservatorio_Hidrico SERIAL PRIMARY KEY,
  idReservatorio_Hidrico SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Rocha_Em_Agua (
  Rocha_Em_Agua SERIAL PRIMARY KEY,
  idRocha_Em_Agua SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Sumidouro_Vertedouro (
  Sumidouro_Vertedouro SERIAL PRIMARY KEY,
  idSumidouro_Vertedouro SERIAL NOT NULL,
  Desc_2 TEXT
);

CREATE TABLE Terreno_Sujeito_Inundacao (
  Terreno_Sujeito_Inundacao SERIAL PRIMARY KEY,
  Foz_Maritima_Foz_Maritima SERIAL NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  idTerreno_Sujeito_Inundacao SERIAL NOT NULL,
  Desc_2 TEXT,
  CONSTRAINT fk_terreno_inundacao_fm FOREIGN KEY (Foz_Maritima_Foz_Maritima) REFERENCES Foz_Maritima(Foz_Maritima),
  CONSTRAINT fk_terreno_inundacao_md FOREIGN KEY (Massa_Dagua_Massa_Dagua) REFERENCES Massa_Dagua(Massa_Dagua)
);

CREATE TABLE Trecho_Curso_Dagua (
  Trecho_Curso_Dagua SERIAL PRIMARY KEY,
  idTrecho_Curso_Dagua SERIAL NOT NULL,
  Curso_Dagua_Curso_Dagua SERIAL NOT NULL,
  Desc_2 TEXT,
  CONSTRAINT fk_trecho_curso_dagua FOREIGN KEY (Curso_Dagua_Curso_Dagua) REFERENCES Curso_Dagua(Curso_Dagua)
);

CREATE TABLE Trecho_Drenagem (
  Trecho_Drenagem SERIAL PRIMARY KEY,
  Corredeira_Corredeira SERIAL NOT NULL,
  Queda_Dagua_Queda_Dagua SERIAL NOT NULL,
  Barragem_Barragem SERIAL NOT NULL,
  Ponto_Drenagem_Ponto_Drenagem SERIAL NOT NULL,
  idTrecho_Drenagem SERIAL NOT NULL,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  Trecho_Massa_Dagua_Trecho_Massa_Dagua SERIAL NOT NULL,
  Trecho_Massa_Dagua_Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  Area_Umida_Area_Umida SERIAL NOT NULL,
  Terreno_Sujeito_Inundacao_Terreno_Sujeito_Inundacao SERIAL NOT NULL,
  Desc_2 TEXT,
  CONSTRAINT fk_trecho_drenagem_cr FOREIGN KEY (Corredeira_Corredeira) REFERENCES Corredeira(Corredeira),
  CONSTRAINT fk_trecho_drenagem_qd FOREIGN KEY (Queda_Dagua_Queda_Dagua) REFERENCES Queda_Dagua(Queda_Dagua),
  CONSTRAINT fk_trecho_drenagem_bg FOREIGN KEY (Barragem_Barragem) REFERENCES Barragem(Barragem),
  CONSTRAINT fk_trecho_drenagem_pd FOREIGN KEY (Ponto_Drenagem_Ponto_Drenagem) REFERENCES Ponto_Drenagem(Ponto_Drenagem),
  CONSTRAINT fk_trecho_drenagem_tcd FOREIGN KEY (Trecho_Curso_Dagua_Trecho_Curso_Dagua) REFERENCES Trecho_Curso_Dagua(Trecho_Curso_Dagua),
  CONSTRAINT fk_trecho_drenagem_tmd FOREIGN KEY (Trecho_Massa_Dagua_Massa_Dagua) REFERENCES Trecho_Massa_Dagua(Massa_Dagua),
  CONSTRAINT fk_trecho_drenagem_md FOREIGN KEY (Massa_Dagua_Massa_Dagua) REFERENCES Massa_Dagua(Massa_Dagua),
  CONSTRAINT fk_trecho_drenagem_au FOREIGN KEY (Area_Umida_Area_Umida) REFERENCES Area_Umida(Area_Umida),
  CONSTRAINT fk_trecho_drenagem_ti FOREIGN KEY (Terreno_Sujeito_Inundacao_Terreno_Sujeito_Inundacao) REFERENCES Terreno_Sujeito_Inundacao(Terreno_Sujeito_Inundacao)
);

CREATE TABLE Trecho_Massa_Dagua (
  Massa_Dagua_Massa_Dagua SERIAL NOT NULL,
  Trecho_Massa_Dagua SERIAL NOT NULL,
  Trecho_Curso_Dagua_Trecho_Curso_Dagua SERIAL NOT NULL,
  idTrecho_Massa_Dagua SERIAL NOT NULL,
  Desc_2 TEXT,
  PRIMARY KEY(Massa_Dagua_Massa_Dagua, Trecho_Massa_Dagua),
  CONSTRAINT fk_trecho_massa_dagua_md FOREIGN KEY (Massa_Dagua_Massa_Dagua) REFERENCES Massa_Dagua(Massa_Dagua),
  CONSTRAINT fk_trecho_massa_dagua_tcd FOREIGN KEY (Trecho_Curso_Dagua_Trecho_Curso_Dagua) REFERENCES Trecho_Curso_Dagua(Trecho_Curso_Dagua)
);
