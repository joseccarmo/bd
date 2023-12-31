CREATE TABLE CENTRO(
  ID NUMERIC NOT NULL,
  CEP CHAR(9) NOT NULL,
  NUMERO CHAR(14) NOT NULL,
  NOME VARCHAR(50) NOT NULL,
  NDOCENTES NUMERIC,

  CONSTRAINT PK_CENTRO PRIMARY KEY(ID),
  CONSTRAINT SK_CENTRO UNIQUE(CEP,NUMERO)
);

CREATE TABLE BLOCO(
    CENTRO NUMERIC NOT NULL,
    NUMERO NUMERIC NOT NULL,

    CONSTRAINT PK_BLOCO PRIMARY KEY(CENTRO, NUMERO),
    CONSTRAINT FK_BLOCO FOREIGN KEY(CENTRO) REFERENCES CENTRO(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE SALA(
    ID NUMERIC NOT NULL,
    CENTRO NUMERIC NOT NULL,
    BLOCO NUMERIC NOT NULL,
    NUMERO NUMERIC NOT NULL,
    TIPO CHAR(14),
    OCUPACAOMAXIMA NUMERIC NOT NULL,

    CONSTRAINT PK_SALA PRIMARY KEY(ID),
    CONSTRAINT SK_SALA UNIQUE(CENTRO,BLOCO,NUMERO),
    CONSTRAINT FK_SALA FOREIGN KEY(CENTRO,BLOCO) REFERENCES BLOCO(CENTRO,NUMERO) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE PESSOA(
  CPF CHAR(14) NOT NULL,
  NOME CHAR(50) NOT NULL,
  TIPO CHAR(11),
  TELEFONE CHAR(14),
  NASCIMENTO DATE,
  SEXO CHAR(1),

  CONSTRAINT PK_PESSOA PRIMARY KEY(CPF)
);

create table ALUNO(
  CPF CHAR(14) NOT NULL,
  CONSTRAINT PK_ALUNO PRIMARY KEY(CPF),
  CONSTRAINT FK_ALUNO FOREIGN KEY(CPF) REFERENCES PESSOA(CPF) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE COORDENADOR(
  CPF CHAR(14) NOT NULL,
  CENTRO NUMERIC NOT NULL,

  CONSTRAINT PK_COORDENADOR PRIMARY KEY(CPF),
  CONSTRAINT FK_COORDENADOR FOREIGN KEY(CENTRO) REFERENCES CENTRO(ID) ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT FK1_COORDENADOR FOREIGN KEY(CPF) REFERENCES PESSOA(CPF) ON UPDATE CASCADE ON DELETE CASCADE
  
);

CREATE TABLE PROFESSOR(
    CPF CHAR(14) NOT NULL,
    SUPERVISOR CHAR(14) NOT NULL,

    CONSTRAINT PK_PROFESSOR PRIMARY KEY(CPF),
    CONSTRAINT FK_PROFESSOR FOREIGN KEY(SUPERVISOR) REFERENCES COORDENADOR(CPF) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK1_PROFESSOR FOREIGN KEY(CPF) REFERENCES PESSOA(CPF) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE TECNICO(
    CPF CHAR(14) NOT NULL,

    CONSTRAINT PK_TECNICO PRIMARY KEY(CPF),
    CONSTRAINT FK_TECNICO FOREIGN KEY(CPF) REFERENCES PESSOA(CPF) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE DISCIPLINA(
    SIGLA CHAR(20) NOT NULL,
    PROFESSOR CHAR(14) NOT NULL,
    SALA NUMERIC NOT NULL,
    NMATRICULADOS INTEGER DEFAULT 0,

    CONSTRAINT PK_DISCIPLINA PRIMARY KEY(SIGLA),
    CONSTRAINT FK_DISCIPLINA FOREIGN KEY(PROFESSOR) REFERENCES PROFESSOR(CPF) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK2_DISCIPLINA FOREIGN KEY(SALA) REFERENCES SALA(ID) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE EQUIPAMENTO(
    NOME CHAR(50),
    NSERIE CHAR(20) NOT NULL,
    CONDICAO CHAR(20) NOT NULL,

    CONSTRAINT PK_EQUIPAMENTO PRIMARY KEY(NSERIE)
);

CREATE TABLE EQUIPAMENTOSALA(
    SALA NUMERIC NOT NULL,
    EQUIPAMENTO CHAR(20) NOT NULL,

    CONSTRAINT PK_EQUIPAMENTOSALA PRIMARY KEY(EQUIPAMENTO),
    CONSTRAINT FK_EQUIPAMENTOSALA FOREIGN KEY(SALA) REFERENCES SALA(ID) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK2_EQUIPAMENTOSALA FOREIGN KEY (EQUIPAMENTO) REFERENCES EQUIPAMENTO(NSERIE) ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE MANUTENCAO(
    EQUIPAMENTO CHAR(20) NOT NULL,
    DATA DATE NOT NULL,
    TECNICO CHAR(14) NOT NULL,

    CONSTRAINT PK_MANUTENCAO PRIMARY KEY(EQUIPAMENTO, DATA),
    CONSTRAINT FK_EQUIPAMENTO FOREIGN KEY (EQUIPAMENTO) REFERENCES EQUIPAMENTO(NSERIE),
    CONSTRAINT FK_MANUTENCAO FOREIGN KEY(TECNICO) REFERENCES TECNICO(CPF) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE PROPOSTA(
    ID NUMERIC NOT NULL,
    NOME VARCHAR(50) NOT NULL,
    DESCRICAO VARCHAR(200),

    CONSTRAINT PK_PROPOSTA PRIMARY KEY(ID),
    CONSTRAINT SK_PROPOSTA UNIQUE(NOME)
);

CREATE TABLE EVENTO(
    PROPOSTA NUMERIC NOT NULL,
    SALA NUMERIC NOT NULL,
    HORARIO TIMESTAMP NOT NULL,
    RESPONSAVEL CHAR(14) NOT NULL,
    BOOLABERTO  CHAR(14) NOT NULL,

    CONSTRAINT PK_EVENTO PRIMARY KEY(SALA,HORARIO),
    CONSTRAINT FK_EVENTO FOREIGN KEY(SALA) REFERENCES SALA(ID) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK2_EVENTO FOREIGN KEY(RESPONSAVEL) REFERENCES PESSOA(CPF) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT CK_EVENTO CHECK(UPPER(BOOLABERTO) IN('PUBLICO','PRIVADO'))
);

CREATE TABLE INSCRICOES(
    SALA NUMERIC NOT NULL,
    HORARIO TIMESTAMP NOT NULL,
    PESSOA CHAR(14) NOT NULL,

    CONSTRAINT PK_INCRICOES PRIMARY KEY(HORARIO,PESSOA),
    CONSTRAINT FK_INCRICOES FOREIGN KEY(SALA, HORARIO) REFERENCES EVENTO(SALA,HORARIO) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE MATRICULA(
    DISC CHAR(20) NOT NULL,
    ALUNO CHAR(14) NOT NULL,

    CONSTRAINT PK_MATRICULA PRIMARY KEY(DISC,ALUNO),
    CONSTRAINT FK_MATRICULA FOREIGN KEY(DISC) REFERENCES DISCIPLINA(SIGLA) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK2_MATRICULA FOREIGN KEY(ALUNO) REFERENCES ALUNO(CPF) ON UPDATE CASCADE ON DELETE CASCADE
);



CREATE TABLE HORARIOSDISC(
    DISC CHAR(20) NOT NULL,
    HORARIO TIME NOT NULL,

    CONSTRAINT PK_HORARIOSDISC PRIMARY KEY(DISC,HORARIO),
    CONSTRAINT FK_HORARIOSDISC FOREIGN KEY(DISC) REFERENCES DISCIPLINA(SIGLA) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE MONITORIA(
    DISC CHAR(20) NOT NULL,
    MONITOR CHAR(14) NOT NULL,

    CONSTRAINT PK_MONITORIA PRIMARY KEY(MONITOR),
    CONSTRAINT FK_MONITORIA FOREIGN KEY(MONITOR) REFERENCES ALUNO(CPF) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK2_MONITORIA FOREIGN KEY(DISC) REFERENCES DISCIPLINA(SIGLA) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE MONITORIAHORARIOS(
    MONITOR CHAR(14) NOT NULL,
    SALA NUMERIC NOT NULL,
    HORARIO TIME NOT NULL,

    CONSTRAINT PK_MONITORIAHORARIOS PRIMARY KEY(SALA, HORARIO),
    CONSTRAINT FK_MONITORIAHORARIOS FOREIGN KEY(MONITOR) REFERENCES ALUNO(CPF) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK2_MONITORIAHORARIOS FOREIGN KEY(SALA) REFERENCES SALA(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

