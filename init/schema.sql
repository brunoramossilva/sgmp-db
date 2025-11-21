CREATE TABLE unidade (
   id_unidade SERIAL PRIMARY KEY,
   bloco INTEGER NOT NULL,
   numero_ap INTEGER NOT NULL,
   andar INTEGER NOT NULL, 
   metragem DECIMAL(6,2),
   vaga_garagem INTEGER NOT NULL
);


CREATE TABLE area_comum (
   id_area SERIAL PRIMARY KEY,
   nome_area VARCHAR(20) NOT NULL,
   capacidade_max INTEGER NOT NULL
);


CREATE TABLE usuario (
    cpf CHAR(11) PRIMARY KEY,
    prim_nome VARCHAR(30) NOT NULL,
    segun_nome VARCHAR(30) NOT NULL,
    terce_nome VARCHAR(30) NOT NULL,
    telefone CHAR(11) NOT NULL,
    email VARCHAR (100) UNIQUE
);


CREATE TABLE morador (
    cpf_morador VARCHAR(11) PRIMARY KEY,
    respons_familiar BOOLEAN NOT NULL,
    propriet_imovel BOOLEAN NOT NULL,  
    id_unidade INTEGER NOT NULL,
    FOREIGN KEY (cpf_morador) REFERENCES usuario (cpf) ON DELETE CASCADE,
    FOREIGN KEY (id_unidade) REFERENCES unidade (id_unidade)
);


CREATE TABLE funcionario (
   cpf_funcionario CHAR(11) PRIMARY KEY,
   matricula VARCHAR(20) NOT NULL,
   expediente VARCHAR(30),
   salario NUMERIC (7,2) NOT NULL,
   FOREIGN KEY (cpf_funcionario) REFERENCES usuario (cpf) ON DELETE CASCADE
);


CREATE TABLE externo (
   cpf_externo CHAR(11) NOT NULL,
   cnpj_empresa CHAR(14) NOT NULL,
   tipo_servico VARCHAR (15) NOT NULL,
   descricao_servico VARCHAR (50) NOT NULL,
   PRIMARY KEY (cpf_externo, cnpj_empresa),
   FOREIGN KEY (cpf_externo) REFERENCES funcionario (cpf_funcionario) ON DELETE CASCADE
);


CREATE TABLE interno (
   cpf_interno CHAR(11) PRIMARY KEY,
   tipo_servico VARCHAR (15) NOT NULL,
   descricao_servico VARCHAR (50) NOT NULL,
   FOREIGN KEY (cpf_interno) REFERENCES funcionario (cpf_funcionario) ON DELETE CASCADE
);


CREATE TABLE sindico (
   cpf_sindico CHAR (11) PRIMARY KEY,
   inicio_mandato DATE NOT NULL,
   fim_mandato DATE NOT NULL,
   FOREIGN KEY (cpf_sindico) REFERENCES morador (cpf_morador) ON DELETE CASCADE
);


CREATE TABLE financas (
   id_financas SERIAL PRIMARY KEY,
   cpf_sindico CHAR (11),
   item_limpeza VARCHAR(20),
   item_manutencao VARCHAR (20),
   receita DECIMAL (10, 2),
   despesas DECIMAL (10, 2),
   impostos DECIMAL (10, 2),
   FOREIGN KEY (cpf_sindico) REFERENCES sindico (cpf_sindico) ON DELETE SET NULL
);


CREATE TABLE ordem_servico (
  id_os SERIAL PRIMARY KEY,
  data_abertura DATE NOT NULL,
  data_conclusao DATE,
  status VARCHAR(20) NOT NULL,
  descricao_prob VARCHAR (50),
  cpf_morador CHAR(11),
  cpf_sindico CHAR(11),
  FOREIGN KEY (cpf_morador) REFERENCES morador (cpf_morador) ON DELETE SET NULL,
  FOREIGN KEY (cpf_sindico) REFERENCES sindico (cpf_sindico) ON DELETE SET NULL
);


CREATE TABLE reserva (
    id_reserva SERIAL PRIMARY KEY,
    id_area INT NOT NULL REFERENCES area_comum(id_area),
    cpf_morador CHAR(11) NOT NULL REFERENCES morador(cpf_morador),
    data_reserva DATE NOT NULL,
    hora_reserva TIME NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'PENDENTE',
    UNIQUE (id_area, data_reserva, hora_reserva)
);


CREATE TABLE executa_os (
  id_os INTEGER PRIMARY KEY, 
  cpf_funcionario CHAR (11),
  tipo_servico VARCHAR (15) NOT NULL,
  FOREIGN KEY (id_os) REFERENCES ordem_servico (id_os) ON DELETE CASCADE,
  FOREIGN KEY (cpf_funcionario) REFERENCES funcionario (cpf_funcionario) ON DELETE SET NULL
);
