-----------------------------------------------------------
--  UNIDADE
-----------------------------------------------------------
INSERT INTO unidade (bloco, numero_ap, andar, metragem, vaga_garagem)
VALUES
(1, 101, 1, 72.5, 1),
(1, 202, 2, 80.0, 2);


-----------------------------------------------------------
--  AREA_COMUM
-----------------------------------------------------------
INSERT INTO area_comum (nome_area, capacidade_max)
VALUES
('Salão de Festas', 80),
('Churrasqueira', 20);


-----------------------------------------------------------
--  USUARIO
-----------------------------------------------------------
INSERT INTO usuario (cpf, prim_nome, segun_nome, terce_nome, telefone, email)
VALUES
('11111111111', 'Ágata', 'Giovanna', 'Albuquerque', '81991234567', 'agata.giovanna@example.com'),
('22222222222', 'Bruno', 'Ramos', 'Silva', '81987654321', 'bruno.silva@example.com'),
('33333333333', 'Diogo', 'Silva', 'Rodrigues', '81995556677', 'diogo.rodrigues@example.com'),
('44444444444', 'Flávia', 'Vitória', 'Santos', '81993332211', 'flavia.vitoria@example.com'),
('55555555555', 'Gryghor', 'Camonni', 'Cesar', '81993332211', 'gryghor.camonni@example.com'),
('66666666666', 'Lucas', 'Silva', 'Cabral', '81993332211', 'lucas.cabral@example.com');

-----------------------------------------------------------
--  MORADOR
-----------------------------------------------------------
INSERT INTO morador (cpf_morador, respons_familiar, propriet_imovel, id_unidade)
VALUES
('11111111111', TRUE, TRUE, 1),
('22222222222', TRUE, FALSE, 2);


-----------------------------------------------------------
--  FUNCIONARIO
-----------------------------------------------------------
INSERT INTO funcionario (cpf_funcionario, matricula, expediente, salario)
VALUES
('33333333333', 'FUNC-001', '08:00 - 17:00', 2450.00),
('44444444444', 'FUNC-002', '09:00 - 18:00', 2600.00);


-----------------------------------------------------------
--  EXTERNO
-----------------------------------------------------------
INSERT INTO externo (cpf_externo, cnpj_empresa, tipo_servico, descricao_servico)
VALUES
('33333333333', '12345678000190', 'Limpeza', 'Limpeza mensal dos corredores'),
('33333333333', '98765432000155', 'Jardinagem', 'Manutenção semanal do jardim');


-----------------------------------------------------------
--  INTERNO
-----------------------------------------------------------
INSERT INTO interno (cpf_interno, tipo_servico, descricao_servico)
VALUES
('44444444444', 'Pintura', 'Pintura das áreas internas');


-----------------------------------------------------------
--  SINDICO
-----------------------------------------------------------
INSERT INTO sindico (cpf_sindico, inicio_mandato, fim_mandato)
VALUES
('11111111111', '2024-01-01', '2026-12-31'),
('22222222222', '2026-01-01', '2028-12-31');


-----------------------------------------------------------
--  FINANCAS
-----------------------------------------------------------
INSERT INTO financas (cpf_sindico, item_limpeza, item_manutencao, receita, despesas, impostos)
VALUES
('11111111111', 'Detergentes', 'Conserto do portão', 18000.00, 4500.00, 900.00),
('22222222222', 'Álcool e panos', 'Troca de lâmpadas', 20000.00, 5200.00, 1100.00);


-----------------------------------------------------------
--  ORDEM_SERVICO
-----------------------------------------------------------
INSERT INTO ordem_servico (data_abertura, data_conclusao, status, descricao_prob, cpf_morador, cpf_sindico)
VALUES
('2025-02-01', NULL, 'ABERTA', 'Vazamento na pia da cozinha', '11111111111', '11111111111'),
('2025-02-03', NULL, 'ABERTA', 'Barulho no portão eletrônico', '22222222222', '11111111111');


-----------------------------------------------------------
--  RESERVA
-----------------------------------------------------------
INSERT INTO reserva (id_area, cpf_morador, data_reserva, hora_reserva, status)
VALUES
(1, '11111111111', '2025-03-10', '18:00', 'APROVADA'),
(2, '22222222222', '2025-03-15', '12:00', 'PENDENTE');


-----------------------------------------------------------
--  EXECUTA_OS
-----------------------------------------------------------
INSERT INTO executa_os (id_os, cpf_funcionario, tipo_servico)
VALUES
(1, '44444444444', 'Manutenção'),
(2, '33333333333', 'Serviço Externo');
