-----------------------------------------------------------
--  UNIDADE
-----------------------------------------------------------
INSERT INTO unidade (bloco, numero_ap, andar, metragem, vaga_garagem)
VALUES
(1, 101, 1, 72.5, 1),
(1, 102, 1, 68.0, 1),
(1, 201, 2, 80.0, 2),
(1, 202, 2, 75.2, 1),
(2, 301, 3, 90.0, 2),
(2, 302, 3, 84.5, 1),
(2, 401, 4, 95.0, 2),
(2, 402, 4, 99.0, 2),
(3, 501, 5, 110.0, 2),
(3, 502, 5, 115.0, 2);

-----------------------------------------------------------
--  AREA_COMUM
-----------------------------------------------------------
INSERT INTO area_comum (nome_area, capacidade_max)
VALUES
('Salão Festas', 80),
('Churrasqueira', 20),
('Piscina', 30),
('Academia', 25),
('Playground', 40),
('Quadra', 60),
('Coworking', 15),
('Cinema', 25),
('Sala Reunião', 10);

-----------------------------------------------------------
--  USUARIO
-----------------------------------------------------------
INSERT INTO usuario (cpf, prim_nome, segun_nome, terce_nome, telefone, email)
VALUES

-- MORADORES:
('11111111111', 'Ágata', 'Lima', 'Souza', '81999990001', 'agata@example.com'),
('12111111111', 'Eduardo', 'Magalhães', 'Souza', '81999990011', 'eduardo@example.com'),
('22222222222', 'Bruno', 'Ramos', 'Silva', '81999990002', 'bruno@example.com'),
('33333333333', 'Carla', 'Vieira', 'Albuquerque', '81999990003', 'carla@example.com'),
('44444444444', 'Diego', 'Henrique', 'Santos', '81999990004', 'diego@example.com'),
('55555555555', 'Elaine', 'Mota', 'Carvalho', '81999990005', 'elaine@example.com'),
('66666666666', 'Fábio', 'Pereira', 'Carvalho', '81999990006', 'fabio@example.com'),
('77777777777', 'Giovana', 'Neri', 'Carvalho', '81999990007', 'giovana@example.com'),
('88888888888', 'Heitor', 'Cunha', 'Avelar', '81999990008', 'heitor@example.com'),
('99999999999', 'Isabela', 'Costa', 'Fernandes', '81999990009', 'isabela@example.com'),
('10101010101', 'João', 'Gomes', 'Almeida', '81999990010', 'joao@example.com'),
('12312312301', 'Marcos', 'Almeida', 'Silva', '81988880001', 'marcos@example.com'),
('12312312302', 'Ana', 'Almeida', 'Silva', '81988880002', 'ana@example.com'),
('12312312303', 'Lucas', 'Almeida', 'Silva', '81988880003', 'lucas@example.com'),
('11111111101', 'Pedro', 'Santos', 'Oliveira', '81988880000', 'Pedro@example.com'),
-- FUNCIONARIOS:
('57294836011', 'Carlos', 'Henrique', 'Souza', '81970001111', 'carlos.henrique@example.com'),
('83102759044', 'Marina', 'Costa', 'Ferreira', '81970002222', 'marina.costa@example.com'),
('46018297520', 'Rafael', 'Oliveira', 'Pinto', '81970003333', 'rafael.oliveira@example.com'),
('91564023877', 'Beatriz', 'Moraes', 'Lima', '81970004444', 'beatriz.moraes@example.com'),
('38492017566', 'Thiago', 'Ramos', 'Pereira', '81970005555', 'thiago.ramos@example.com'),
('70291548322', 'Patrícia', 'Alves', 'Gomes', '81970006666', 'patricia.alves@example.com'),
('19834762009', 'Felipe', 'Barbosa', 'Nunes', '81970007777', 'felipe.barbosa@example.com'),
('62901485733', 'Larissa', 'Santos', 'Ribeiro', '81970008888', 'larissa.santos@example.com'),
('54879021388', 'Gustavo', 'Mendes', 'Cardoso', '81970009999', 'gustavo.mendes@example.com'),
('31786540251', 'Renata', 'Pires', 'Castro', '81970010000', 'renata.pires@example.com');



-----------------------------------------------------------
--  MORADOR
-----------------------------------------------------------
INSERT INTO morador (cpf_morador, respons_familiar, propriet_imovel, id_unidade)
VALUES
('11111111111', FALSE, FALSE, 1), -- Famailia 1
('12111111111', TRUE, TRUE, 1), -- Familia 1
('22222222222', TRUE, FALSE, 2),
('33333333333', TRUE, TRUE, 3),
('44444444444', FALSE, FALSE, 4),
('55555555555', FALSE, FALSE, 5), -- Familia 5
('66666666666', TRUE, TRUE, 5), -- Familia 5
('77777777777', FALSE, FALSE, 5), -- Familia 5
('12312312301', TRUE, TRUE, 6), -- Familia 6
('12312312302', FALSE, TRUE, 6), -- Familia 6
('12312312303', FALSE, FALSE, 6), -- Familia 6
('11111111101', TRUE, TRUE, 7),
('88888888888', TRUE, FALSE, 8),
('99999999999', TRUE, TRUE, 9),
('10101010101', TRUE, TRUE, 10);


-----------------------------------------------------------
--  FUNCIONARIO
-----------------------------------------------------------
INSERT INTO funcionario (cpf_funcionario, matricula, expediente, salario)
VALUES
-- Turno manha:
('57294836011', 'FUNC-011', '06:00 - 15:00', 2500.00),
('83102759044', 'FUNC-012', '07:00 - 16:00', 2550.00),
('46018297520', 'FUNC-013', '08:00 - 17:00', 2600.00),
-- Turno tarde:
('91564023877', 'FUNC-014', '10:00 - 19:00', 2700.00),
('38492017566', 'FUNC-015', '12:00 - 21:00', 2850.00),
('70291548322', 'FUNC-016', '13:00 - 22:00', 2900.00),
-- Turno noite:
('19834762009', 'FUNC-017', '14:00 - 23:00', 2950.00),
('62901485733', 'FUNC-018', '15:00 - 00:00', 3000.00),
('54879021388', 'FUNC-019', '16:00 - 01:00', 3100.00),
('31786540251', 'FUNC-020', '17:00 - 02:00', 3200.00);

-----------------------------------------------------------
--  EXTERNO
-----------------------------------------------------------
INSERT INTO externo (cpf_externo, cnpj_empresa, tipo_servico, descricao_servico)
VALUES
('57294836011', '11122233000155', 'Dedetização', 'Serviço de controle de pragas realizado mensalmente'),
('83102759044', '22233344000166', 'Elétrica', 'Reparo e manutenção elétrica predial');


-----------------------------------------------------------
--  INTERNO
-----------------------------------------------------------
INSERT INTO interno (cpf_interno, tipo_servico, descricao_servico)
VALUES
-- 1 Manutenção Geral
('46018297520', 'Manutenção', 'Responsável por reparos gerais no condomínio'),

-- 1 Suporte de TI
('91564023877', 'TI', 'Atendimento e manutenção dos sistemas internos'),

-- 3 Limpeza (2 dia, 1 noite)
('38492017566', 'Limpeza', 'Limpeza diurna das áreas comuns'),
('70291548322', 'Limpeza', 'Limpeza diurna dos corredores e recepção'),
('19834762009', 'Limpeza', 'Limpeza noturna das áreas comuns'),

-- 1 Jardinagem
('62901485733', 'Jardinagem', 'Manutenção e cuidado dos jardins internos'),

-- 2 Porteiros (1 dia, 1 noite)
('54879021388', 'Portaria', 'Controle de entrada durante o turno do dia'),
('31786540251', 'Portaria', 'Controle de entrada durante o turno da noite');


-----------------------------------------------------------
--  SINDICO
-----------------------------------------------------------
INSERT INTO sindico (cpf_sindico, inicio_mandato, fim_mandato)
VALUES
('11111111111', '2024-01-01', '2024-12-31'),
('22222222222', '2023-01-01', '2023-12-31'),
('33333333333', '2022-01-01', '2022-12-31');


-----------------------------------------------------------
--  FINANCAS
-----------------------------------------------------------
INSERT INTO financas (cpf_sindico, item_limpeza, item_manutencao, receita, despesas, impostos)
VALUES
('11111111111', 'Detergente', 'Lâmpadas', 25000, 8000, 1200),
('11111111111', 'Sabão', 'Portão', 22000, 7000, 1100),
('22222222222', 'Álcool', 'Cerca', 23000, 8500, 1300),
('22222222222', 'Vassoura', 'Piscina', 27000, 9000, 1250),
('22222222222', 'Pano', 'Telhado', 30000, 9500, 1400),
('11111111111', 'Limpa Vidro', 'Recepção', 26000, 8800, 1350),
('11111111111', 'Água Sanit.', 'Churrasqueira', 24000, 9200, 1500),
('33333333333', 'Multiuso', 'Quadra', 25000, 8600, 1100),
('33333333333', 'Desinfet.', 'Academia', 29000, 9300, 1450),
('33333333333', 'Sabonete', 'Playground', 28000, 8700, 1300);


-----------------------------------------------------------
--  ORDEM_SERVICO
-----------------------------------------------------------
INSERT INTO ordem_servico (data_abertura, data_conclusao, situacao, descricao_prob, cpf_morador, cpf_sindico)
VALUES
-- Ano 2022 → Síndico responsável = 33333333333
('2022-01-10', '2022-01-12', 'Concluída', 'Vazamento no banheiro', '12111111111', '33333333333'),
('2022-05-10', NULL,           'Em andamento', 'Lâmpada queimada', '22222222222', '33333333333'),
('2022-03-20', '2022-03-25', 'Concluída', 'Problema na porta', '11111111101', '33333333333'),

-- Ano 2023 → Síndico responsável = 22222222222
('2023-04-02', NULL,           'Pendente', 'Cheiro de gás', '44444444444', '22222222222'),
('2023-05-15', '2023-05-18', 'Concluída', 'Vidro quebrado', '55555555555', '22222222222'),
('2023-06-01', NULL,           'Em andamento', 'Interfone mudo', '66666666666', '22222222222'),
('2023-07-09', '2023-07-12', 'Concluída', 'Cano entupido', '77777777777', '22222222222'),

-- Ano 2024 → Síndico responsável = 11111111111
('2024-08-21', NULL,           'Pendente', 'Ralo entupido', '88888888888', '11111111111'),
('2024-09-11', '2024-09-14', 'Concluída', 'Pintura descascando', '99999999999', '11111111111'),
('2024-10-05', NULL,           'Em andamento', 'Barulho no encanamento', '10101010101', '11111111111');


-----------------------------------------------------------
--  RESERVA
-----------------------------------------------------------
INSERT INTO reserva (id_area, cpf_morador, data_reserva, hora_reserva, situacao)
VALUES
(1, '12111111111', '2024-01-10', '10:00', 'APROVADO'),
(2, '22222222222', '2024-02-11', '11:00', 'PENDENTE'),
(3, '33333333333', '2024-03-12', '14:00', 'APROVADO'),
(4, '44444444444', '2024-04-13', '16:00', 'NEGADO'),
(5, '11111111101', '2024-05-14', '18:00', 'PENDENTE'),
(6, '66666666666', '2024-07-16', '10:00', 'APROVADO'),
(7, '88888888888', '2024-08-17', '12:00', 'PENDENTE'),
(8, '99999999999', '2024-09-18', '15:00', 'APROVADO'),
(9, '12312312301', '2024-10-19', '09:00', 'APROVADO');


-----------------------------------------------------------
--  EXECUTA_OS
-----------------------------------------------------------
INSERT INTO executa_os (id_os, cpf_funcionario, tipo_servico)
VALUES
-- OS 1: Vazamento no banheiro (hidráulica)
(1, '31786540251', 'Hidráulica'),

-- OS 2: Lâmpada queimada (serviço elétrico → funcionário externo)
(2, '83102759044', 'Elétrica'),

-- OS 3: Problema na porta (manutenção)
(3, '46018297520', 'Manutenção'),

-- OS 4: Cheiro de gás (porteiro dia aciona emergência)
(4, '54879021388', 'Portaria'),

-- OS 5: Vidro quebrado (manutenção geral)
(5, '46018297520', 'Manutenção'),

-- OS 6: Interfone mudo (TI)
(6, '91564023877', 'TI'),

-- OS 7: Cano entupido (hidráulica)
(7, '31786540251', 'Hidráulica'),

-- OS 8: Ralo entupido (limpeza)
(8, '38492017566', 'Limpeza'),

-- OS 9: Pintura descascando (manutenção)
(9, '46018297520', 'Pintura'),

-- OS 10: Barulho no encanamento (hidráulica)
(10, '31786540251', 'Hidráulica');

