-- inserts do banco  
-- favor rodar os irserts por parte e os views também 

USE clinica_odontologica;

-- ===============================
-- TABELA: cargo
-- ===============================
INSERT INTO cargo (nome, descricao) VALUES
('Dentista', 'Atendimento clínico odontológico'),
('Recepcionista', 'Atendimento ao público e agendamentos'),
('Auxiliar', 'Auxilia o dentista durante os procedimentos'),
('Cirurgião-Dentista', 'Executa cirurgias orais'),
('Endodontista', 'Especialista em tratamento de canal'),
('Ortodontista', 'Trabalha com aparelhos dentários'),
('Periodontista', 'Cuida da gengiva e tecidos bucais'),
('Protesista', 'Responsável por próteses dentárias'),
('Higienista', 'Realiza limpezas e profilaxias'),
('Técnico de Raio-X', 'Executa radiografias odontológicas'),
('Gerente', 'Administração geral da clínica'),
('Financeiro', 'Controle de pagamentos e cobranças'),
('TI', 'Manutenção de sistemas e computadores'),
('Marketing', 'Gerencia divulgação e redes sociais'),
('Atendente', 'Recebe pacientes e faz triagem'),
('RH', 'Cuidar dos funcionários'),
('Anestesista', 'Aplica anestesias em procedimentos'),
('Estagiário', 'Auxílio supervisionado nas rotinas'),
('Consultor', 'Apoio em melhorias estratégicas'),
('Serviços Gerais', 'Limpeza e manutenção da clínica');

-- ===============================
-- TABELA: seguro_saude
-- ===============================
INSERT INTO seguro_saude (cobertura, apolice, seguradora) VALUES
('Básica', 'AP1001', 'OdontoCare'),
('Premium', 'AP1002', 'SorrisoMais'),
('Intermediária', 'AP1003', 'DentalLife'),
('Básica', 'AP1004', 'OdontoFácil'),
('Premium', 'AP1005', 'DentalPlus'),
('Intermediária', 'AP1006', 'SorrisoCerto'),
('Premium', 'AP1007', 'DentalPrime'),
('Básica', 'AP1008', 'OdontoLine'),
('Intermediária', 'AP1009', 'OdontoPro'),
('Premium', 'AP1010', 'DentalCare'),
('Básica', 'AP1011', 'SorrisoSeguro'),
('Premium', 'AP1012', 'OdontoSaúde'),
('Intermediária', 'AP1013', 'DentalFit'),
('Básica', 'AP1014', 'OralMais'),
('Premium', 'AP1015', 'OdontoVip'),
('Intermediária', 'AP1016', 'SorrisoTop'),
('Básica', 'AP1017', 'SmileCare'),
('Premium', 'AP1018', 'DentalMax'),
('Intermediária', 'AP1019', 'OdontoPlus'),
('Básica', 'AP1020', 'SorrisoLight');

-- ===============================
-- TABELA: clinica
-- ===============================
INSERT INTO clinica (cnpj, nome) VALUES
('00000000000100', 'Clínica Sorriso Feliz'),
('00000000000101', 'Odonto Mais'),
('00000000000102', 'Dental Center'),
('00000000000103', 'Odonto Vida'),
('00000000000104', 'Sorriso Perfeito'),
('00000000000105', 'OdontoLine'),
('00000000000106', 'Dental Prime'),
('00000000000107', 'Clínica OdontoTop'),
('00000000000108', 'Sorriso Plus'),
('00000000000109', 'Oral Clean'),
('00000000000110', 'Odonto Master'),
('00000000000111', 'Clínica DentalMais'),
('00000000000112', 'Odonto Vip'),
('00000000000113', 'Sorriso Saúde'),
('00000000000114', 'Dental Pro'),
('00000000000115', 'Clínica OdontoCare'),
('00000000000116', 'Sorriso Center'),
('00000000000117', 'OdontoTotal'),
('00000000000118', 'DentalLine'),
('00000000000119', 'Clínica SmileUp');

-- ===============================
-- TABELA: localizacao_clinica
-- ===============================
INSERT INTO localizacao_clinica (clinica_cnpj, cidade, rua, bairro, cep, numero) VALUES
('00000000000100','Recife','Rua A','Centro','50000-000','100'),
('00000000000101','Olinda','Rua B','Carmo','50000-001','101'),
('00000000000102','Recife','Rua C','Boa Vista','50000-002','102'),
('00000000000103','Recife','Rua D','Derby','50000-003','103'),
('00000000000104','Olinda','Rua E','Varadouro','50000-004','104'),
('00000000000105','Recife','Rua F','Boa Viagem','50000-005','105'),
('00000000000106','Olinda','Rua G','Casa Caiada','50000-006','106'),
('00000000000107','Recife','Rua H','Espinheiro','50000-007','107'),
('00000000000108','Olinda','Rua I','Rio Doce','50000-008','108'),
('00000000000109','Recife','Rua J','Pina','50000-009','109'),
('00000000000110','Recife','Rua K','Centro','50000-010','110'),
('00000000000111','Olinda','Rua L','Carmo','50000-011','111'),
('00000000000112','Recife','Rua M','Boa Vista','50000-012','112'),
('00000000000113','Olinda','Rua N','Varadouro','50000-013','113'),
('00000000000114','Recife','Rua O','Derby','50000-014','114'),
('00000000000115','Olinda','Rua P','Casa Caiada','50000-015','115'),
('00000000000116','Recife','Rua Q','Boa Viagem','50000-016','116'),
('00000000000117','Olinda','Rua R','Rio Doce','50000-017','117'),
('00000000000118','Recife','Rua S','Espinheiro','50000-018','118'),
('00000000000119','Olinda','Rua T','Varadouro','50000-019','119');



-- ===============================
-- TABELA: prontuario
-- ===============================
INSERT INTO prontuario (hist_saude_bucal) VALUES
('Histórico sem cáries, limpeza anual'),
('Tratamento ortodôntico iniciado em 2020'),
('Canal realizado em molar esquerdo'),
('Extração de siso em 2023'),
('Profilaxia sem intercorrências'),
('Prótese parcial removível'),
('Manutenção ortodôntica mensal'),
('Gengivite controlada'),
('Cárie tratada em pré-molar'),
('Implante realizado em 2022'),
('Reabilitação oral completa'),
('Paciente fumante, acompanhamento'),
('Limpeza e clareamento'),
('Canal e restauração'),
('Prótese fixa superior'),
('Gengivite leve'),
('Cáries múltiplas tratadas'),
('Manutenção preventiva'),
('Clareamento em 2024'),
('Tratamento periodontal');

-- ===============================
-- TABELA: paciente
-- ===============================
INSERT INTO paciente (cpf, data_nascimento, nome, clinica_cnpj, prontuario_id_prontuario, seguro_saude_id_seguro_saude) VALUES
('00000000001','1990-05-12','Ana Souza','00000000000100',1,1),
('00000000002','1988-04-11','Bruno Lima','00000000000101',2,2),
('00000000003','1995-07-08','Carla Silva','00000000000102',3,3),
('00000000004','1992-06-15','Daniel Oliveira','00000000000103',4,4),
('00000000005','1987-01-03','Eduarda Nunes','00000000000104',5,5),
('00000000006','1994-09-22','Felipe Santos','00000000000105',6,6),
('00000000007','1996-10-18','Giovana Rocha','00000000000106',7,7),
('00000000008','1993-03-29','Hugo Martins','00000000000107',8,8),
('00000000009','1989-11-12','Isabela Ferreira','00000000000108',9,9),
('00000000010','1991-12-01','João Souza','00000000000109',10,10),
('00000000011','1992-02-04','Karina Castro','00000000000110',11,11),
('00000000012','1990-06-08','Leonardo Mendes','00000000000111',12,12),
('00000000013','1986-08-09','Mariana Lopes','00000000000112',13,13),
('00000000014','1997-09-25','Nicolas Teixeira','00000000000113',14,14),
('00000000015','1993-10-14','Olivia Ribeiro','00000000000114',15,15),
('00000000016','1999-05-23','Pedro Cunha','00000000000115',16,16),
('00000000017','1988-07-30','Quezia Santos','00000000000116',17,17),
('00000000018','1994-01-11','Rafael Carvalho','00000000000117',18,18),
('00000000019','1996-11-17','Sara Almeida','00000000000118',19,19),
('00000000020','1992-03-28','Tiago Correia','00000000000119',20,20);

-- ===============================
-- TABELA: localizacao_pc
-- ===============================
INSERT INTO localizacao_pc (paciente_cpf, cidade, rua, bairro, cep, numero) VALUES
('00000000001', 'Recife', 'Rua das Flores', 'Boa Vista', '50000-001', '101'),
('00000000002', 'Olinda', 'Rua do Sol', 'Carmo', '53000-001', '202'),
('00000000003', 'Jaboatão dos Guararapes', 'Rua das Palmeiras', 'Centro', '54000-001', '303'),
('00000000004', 'Paulista', 'Rua Marechal Deodoro', 'Maranguape', '53400-001', '404'),
('00000000005', 'Cabo de Santo Agostinho', 'Rua Bela Vista', 'Centro', '54500-001', '505'),
('00000000006', 'Caruaru', 'Rua José de Alencar', 'Maurício de Nassau', '55000-001', '606'),
('00000000007', 'Garanhuns', 'Rua Dom Pedro II', 'Heliópolis', '55295-001', '707'),
('00000000008', 'Petrolina', 'Rua das Oliveiras', 'Centro', '56300-001', '808'),
('00000000009', 'Arcoverde', 'Rua Sete de Setembro', 'Boa Vista', '56500-001', '909'),
('00000000010', 'Gravatá', 'Rua da Paz', 'Centro', '55642-001', '1010'),
('00000000011', 'Igarassu', 'Rua dos Limoeiros', 'Centro', '53610-001', '1111'),
('00000000012', 'Vitória de Santo Antão', 'Rua das Acácias', 'Matriz', '55612-001', '1212'),
('00000000013', 'Pesqueira', 'Rua São João', 'Eldorado', '55200-001', '1313'),
('00000000014', 'Goiana', 'Rua Nova Esperança', 'Centro', '55900-001', '1414'),
('00000000015', 'Surubim', 'Rua da Independência', 'Centro', '55750-001', '1515'),
('00000000016', 'Palmares', 'Rua Frei Caneca', 'Centro', '55540-001', '1616'),
('00000000017', 'Limoeiro', 'Rua Princesa Isabel', 'Centro', '55700-001', '1717'),
('00000000018', 'Timbaúba', 'Rua Santo Antônio', 'Centro', '55870-001', '1818'),
('00000000019', 'Escada', 'Rua das Rosas', 'Centro', '55500-001', '1919'),
('00000000020', 'Recife', 'Rua Aurora', 'Boa Vista', '50050-001', '2020');


-- ===============================
-- TABELA: funcionario
-- ===============================
INSERT INTO funcionario (cpf, funcao, nome, clinica_cnpj, cargo_id_cargo) VALUES
('12312312300', 'Dentista', 'Dr. João Ferreira', '00000000000100', 1),
('23423423400', 'Recepcionista', 'Maria Souza', '00000000000100', 2),
('34534534500', 'Auxiliar', 'Cláudia Lima', '00000000000101', 3),
('45645645600', 'Cirurgião-Dentista', 'Pedro Rocha', '00000000000102', 4),
('56756756700', 'Endodontista', 'Camila Dias', '00000000000103', 5),
('67867867800', 'Ortodontista', 'José Santos', '00000000000104', 6),
('78978978900', 'Periodontista', 'Larissa Alves', '00000000000105', 7),
('89089089000', 'Protesista', 'Paulo Nogueira', '00000000000106', 8),
('90190190100', 'Higienista', 'Rita Souza', '00000000000107', 9),
('01201201200', 'Técnico de Raio-X', 'Carlos Oliveira', '00000000000108', 10),
('10110110100', 'Gerente', 'Lucas Pereira', '00000000000109', 11),
('20220220200', 'Financeiro', 'Patrícia Melo', '00000000000110', 12),
('30330330300', 'TI', 'Dr. Ricardo Lima', '00000000000111', 13),
('40440440400', 'Marketing', 'André Nascimento', '00000000000112', 14),
('50550550500', 'Atendente', 'Eduardo Gomes', '00000000000113', 15),
('60660660600', 'RH', 'Juliana Moura', '00000000000114', 16),
('70770770700', 'Anestesista', 'Felipe Costa', '00000000000115', 17),
('80880880800', 'Estagiário', 'Tatiane Silva', '00000000000116', 18),
('90990990900', 'Consultor', 'Bruno Castro', '00000000000117', 19),
('00000000000', 'Serviços Gerais', 'Rogério Martins', '00000000000118', 20);

-- ===============================
-- TABELA: profissional
-- ===============================
INSERT INTO profissional (cro, especialidade, nome, clinica_cnpj) VALUES
(1001, 'Ortodontia', 'Dra. Ana Bezerra', '00000000000100'),
(1002, 'Endodontia', 'Dr. Carlos Nogueira', '00000000000101'),
(1003, 'Implantodontia', 'Dra. Fernanda Alves', '00000000000102'),
(1004, 'Dentística', 'Dr. João Lima', '00000000000103'),
(1005, 'Odontopediatria', 'Dra. Paula Freitas', '00000000000104'),
(1006, 'Cirurgia Oral', 'Dr. Roberto Santos', '00000000000105'),
(1007, 'Periodontia', 'Dra. Luana Dias', '00000000000106'),
(1008, 'Clínico Geral', 'Dr. Gustavo Melo', '00000000000107'),
(1009, 'Radiologia Odonto', 'Dra. Renata Torres', '00000000000108'),
(1010, 'Ortodontia', 'Dr. Thiago Silva', '00000000000109'),
(1011, 'Prótese Dental', 'Dra. Camila Rocha', '00000000000110'),
(1012, 'Estética', 'Dr. Pedro Mendes', '00000000000111'),
(1013, 'Endodontia', 'Dra. Tatiane Ramos', '00000000000112'),
(1014, 'Clínico Geral', 'Dr. Rafael Costa', '00000000000113'),
(1015, 'Implantodontia', 'Dra. Luciana Lima', '00000000000114'),
(1016, 'Odontopediatria', 'Dr. Henrique Souza', '00000000000115'),
(1017, 'Cirurgia Oral', 'Dra. Marina Castro', '00000000000116'),
(1018, 'Estética', 'Dr. João Victor', '00000000000117'),
(1019, 'Periodontia', 'Dra. Sandra Farias', '00000000000118'),
(1020, 'Ortodontia', 'Dr. Daniel Gomes', '00000000000119');

-- ===============================
--          CONSULTA
-- ===============================
INSERT INTO consulta (tipo, data_consulta, status, paciente_cpf, profissional_cro) VALUES
('Rotina', '2025-10-15 09:00:00', 'Agendada', '00000000001', 1001),
('Emergencial', '2025-10-15 10:30:00', 'Realizada', '00000000002', 1002),
('Ortodontia', '2025-10-16 08:00:00', 'Agendada', '00000000003', 1003),
('Endodontia', '2025-10-16 09:30:00', 'Realizada', '00000000004', 1004),
('Clareamento', '2025-10-17 11:00:00', 'Agendada', '00000000005', 1005),
('Profilaxia', '2025-10-17 13:00:00', 'Realizada', '00000000006', 1006),
('Implante', '2025-10-18 14:00:00', 'Agendada', '00000000007', 1007),
('Restauração', '2025-10-18 15:30:00', 'Realizada', '00000000008', 1008),
('Extração', '2025-10-19 08:30:00', 'Agendada', '00000000009', 1009),
('Cirurgia', '2025-10-19 10:00:00', 'Realizada', '00000000010', 1010),
('Ortodontia', '2025-10-20 09:00:00', 'Agendada', '00000000011', 1011),
('Endodontia', '2025-10-20 11:00:00', 'Realizada', '00000000012', 1012),
('Clareamento', '2025-10-21 08:00:00', 'Agendada', '00000000013', 1013),
('Profilaxia', '2025-10-21 09:30:00', 'Realizada', '00000000014', 1014),
('Implante', '2025-10-22 10:00:00', 'Agendada', '00000000015', 1015),
('Restauração', '2025-10-22 11:30:00', 'Realizada', '00000000016', 1016),
('Extração', '2025-10-23 08:00:00', 'Agendada', '00000000017', 1017),
('Cirurgia', '2025-10-23 09:30:00', 'Realizada', '00000000018', 1018),
('Ortodontia', '2025-10-24 10:00:00', 'Agendada', '00000000019', 1019),
('Endodontia', '2025-10-24 11:30:00', 'Realizada', '00000000020', 1020);


SELECT id_consulta FROM consulta;

-- ===============================
--         PROCEDIMENTO
-- ===============================


INSERT INTO procedimento (nome_procedimento, orcamento, descricao, consulta_id_consulta) VALUES
('Limpeza Dental', 150.00, 'Limpeza de rotina e polimento dental', 1),
('Canal Molar', 200.00, 'Tratamento de canal em molar superior', 2),
('Aparelho Ortodôntico', 300.00, 'Colocação de aparelho fixo', 3),
('Restauração Amálgama', 250.00, 'Restauração de dente posterior', 4),
('Clareamento Dental', 180.00, 'Clareamento dental caseiro supervisionado', 5),
('Profilaxia', 220.00, 'Limpeza preventiva e orientação de higiene', 6),
('Implante Dentário', 350.00, 'Implante de dente anterior', 7),
('Restauração Composta', 275.00, 'Restauração estética de dente frontal', 8),
('Extração de Siso', 400.00, 'Extração do terceiro molar', 9),
('Cirurgia Oral Menor', 320.00, 'Cirurgia para remoção de cistos simples', 10),
('Aparelho Ortodôntico', 280.00, 'Ajuste e manutenção do aparelho', 11),
('Tratamento de Canal', 210.00, 'Canal em pré-molar', 12),
('Clareamento Laser', 190.00, 'Clareamento dental com laser', 13),
('Profilaxia Avançada', 230.00, 'Limpeza profunda e aplicação de flúor', 14),
('Implante Molar', 360.00, 'Implante dentário em molares', 15),
('Restauração Estética', 310.00, 'Restauração composta em dente frontal', 16),
('Extração Simples', 270.00, 'Extração dentária sem complicações', 17),
('Cirurgia Oral Complexa', 260.00, 'Cirurgia para remoção de dentes inclusos', 18),
('Aparelho Ortodôntico', 300.00, 'Instalação e manutenção do aparelho', 19),
('Tratamento Endodôntico', 290.00, 'Tratamento de canal complexo', 20);

-- ===============================
-- PROCEDIMENTO_PRONTUARIO
-- ===============================

INSERT INTO procedimento_prontuario (procedimento_id_procedimento, prontuario_id_prontuario) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- ===============================
-- FATURAMENTO
-- ===============================
INSERT INTO faturamento (valor, metodo, clinica_cnpj, procedimento_id_procedimento) VALUES
(150.00, 'pix', '00000000000100', 1),
(200.00, 'cartao', '00000000000101', 2),
(300.00, 'dinheiro', '00000000000102', 3),
(250.00, 'pix', '00000000000103', 4),
(180.00, 'cartao', '00000000000104', 5),
(220.00, 'dinheiro', '00000000000105', 6),
(350.00, 'pix', '00000000000106', 7),
(275.00, 'cartao', '00000000000107', 8),
(400.00, 'dinheiro', '00000000000108', 9),
(320.00, 'pix', '00000000000109', 10),
(280.00, 'cartao', '00000000000110', 11),
(210.00, 'dinheiro', '00000000000111', 12),
(190.00, 'pix', '00000000000112', 13),
(230.00, 'cartao', '00000000000113', 14),
(360.00, 'dinheiro', '00000000000114', 15),
(310.00, 'pix', '00000000000115', 16),
(270.00, 'cartao', '00000000000116', 17),
(260.00, 'dinheiro', '00000000000117', 18),
(300.00, 'pix', '00000000000118', 19),
(290.00, 'cartao', '00000000000119', 20);


-- ===============================
-- LABORATORIO_EXTERNO
-- ===============================
INSERT INTO laboratorio_externo (id_laboratorio, nome, telefone, historico_trabalhos_realizados, clinica_cnpj) VALUES
(1, 'Lab Sorriso Feliz', '8130001000', 'Trabalhos de próteses e moldes odontológicos', '00000000000100'),
(2, 'OdontoLab Mais', '8130001001', 'Restaurações e modelos dentários', '00000000000101'),
(3, 'Dental Center Lab', '8130001002', 'Produção de coroas e pontes', '00000000000102'),
(4, 'Odonto Vida Lab', '8130001003', 'Trabalhos de ortodontia', '00000000000103'),
(5, 'Sorriso Perfeito Lab', '8130001004', 'Clareamento e próteses', '00000000000104'),
(6, 'OdontoLine Lab', '8130001005', 'Laboratório de implantes e moldes', '00000000000105'),
(7, 'Dental Prime Lab', '8130001006', 'Trabalhos gerais odontológicos', '00000000000106'),
(8, 'OdontoTop Lab', '8130001007', 'Produção de próteses e alinhadores', '00000000000107'),
(9, 'Sorriso Plus Lab', '8130001008', 'Laboratório de estética dental', '00000000000108'),
(10, 'Oral Clean Lab', '8130001009', 'Restaurações e coroas', '00000000000109'),
(11, 'Odonto Master Lab', '8130001010', 'Trabalhos ortodônticos e protéticos', '00000000000110'),
(12, 'DentalMais Lab', '8130001011', 'Produção de aparelhos e próteses', '00000000000111'),
(13, 'Odonto Vip Lab', '8130001012', 'Clareamento, moldes e próteses', '00000000000112'),
(14, 'Sorriso Saúde Lab', '8130001013', 'Implantes e restaurações', '00000000000113'),
(15, 'Dental Pro Lab', '8130001014', 'Laboratório completo de próteses', '00000000000114'),
(16, 'OdontoCare Lab', '8130001015', 'Produção de aparelhos ortodônticos', '00000000000115'),
(17, 'Sorriso Center Lab', '8130001016', 'Trabalhos de ortodontia e estética', '00000000000116'),
(18, 'OdontoTotal Lab', '8130001017', 'Implantes, coroas e próteses', '00000000000117'),
(19, 'DentalLine Lab', '8130001018', 'Laboratório de próteses dentárias', '00000000000118'),
(20, 'SmileUp Lab', '8130001019', 'Restaurações e próteses personalizadas', '00000000000119');



-- apos os inserts rode separadamente por gentileza
use clinica_odontologica;
-- Views

-- VIEW 1 Relatório de Consultas Agendadas por Profissional
CREATE VIEW vw_consultas_agendadas AS
SELECT 
    p.nome AS profissional_nome,
    p.especialidade,
    p.cro,
    c.id_consulta,
    c.data_consulta,
    c.tipo,
    c.status,
    pc.nome AS paciente_nome,
    pc.cpf AS paciente_cpf
FROM consulta c
JOIN profissional p ON c.profissional_cro = p.cro
JOIN paciente pc ON c.paciente_cpf = pc.cpf
WHERE c.data_consulta >= CURDATE()
ORDER BY p.nome, c.data_consulta;

-- VIEW 2: Faturamento Mensal por Tipo de Procedimento(SUM() significa "SOMAR") e (avg() significa "media")
CREATE VIEW vw_faturamento_mensal AS
SELECT 
    YEAR(c.data_consulta) AS ano,
    MONTH(c.data_consulta) AS mes,
    proc.nome_procedimento,
    COUNT(proc.id_procedimento) AS total_procedimentos,
    SUM(f.valor) AS valor_total,
    AVG(f.valor) AS valor_medio,
    f.metodo AS metodo_pagamento
FROM faturamento f
JOIN procedimento proc ON f.procedimento_id_procedimento = proc.id_procedimento
JOIN consulta c ON proc.consulta_id_consulta = c.id_consulta
GROUP BY YEAR(c.data_consulta), MONTH(c.data_consulta), proc.nome_procedimento, f.metodo
ORDER BY ano DESC, mes DESC, valor_total DESC;

-- VIEW 3: Pacientes com Seguro Saúde DATEDIFF significa (Diferença entre Datas).
-- É como uma calculadora de tempo que conta quantos dias existem entre duas datas.)
-- curdate significa (Data Atual). É como um calendário automático que sempre mostra a data atual do dia
CREATE VIEW vw_pacientes_com_seguro AS
SELECT 
    p.cpf,
    p.nome AS paciente_nome,
    p.data_nascimento,
    ss.seguradora,
    ss.apolice,
    ss.cobertura,
    DATEDIFF(CURDATE(), p.data_nascimento) / 365 AS idade
FROM paciente p
JOIN seguro_saude ss ON p.seguro_saude_id_seguro_saude = ss.id_seguro_saude
WHERE p.seguro_saude_id_seguro_saude IS NOT NULL
ORDER BY ss.seguradora, p.nome;

-- VIEW 4: Profissionais e Suas Especialidades (COUNT() significa "CONTAR")
CREATE VIEW vw_profissionais_especialidades AS
SELECT 
    p.cro,
    p.nome AS profissional_nome,
    p.especialidade,
    c.nome AS clinica_nome,
    COUNT(cons.id_consulta) AS total_consultas,
    AVG(proc.orcamento) AS orcamento_medio_procedimentos
FROM profissional p
JOIN clinica c ON p.clinica_cnpj = c.cnpj
LEFT JOIN consulta cons ON p.cro = cons.profissional_cro
LEFT JOIN procedimento proc ON cons.id_consulta = proc.consulta_id_consulta
GROUP BY p.cro, p.nome, p.especialidade, c.nome
ORDER BY total_consultas DESC;

-- VIEW 5: Histórico Completo do Paciente
CREATE VIEW vw_historico_paciente_completo AS
SELECT 
    pc.cpf,
    pc.nome AS paciente_nome,
    prt.id_prontuario,
    prt.hist_saude_bucal,
    cons.data_consulta,
    cons.tipo AS tipo_consulta,
    cons.status AS status_consulta,
    proc.nome_procedimento,
    proc.orcamento,
    proc.descricao AS descricao_procedimento,
    prof.nome AS profissional_responsavel,
    prof.especialidade
FROM paciente pc
JOIN prontuario prt ON pc.prontuario_id_prontuario = prt.id_prontuario
LEFT JOIN consulta cons ON pc.cpf = cons.paciente_cpf
LEFT JOIN procedimento proc ON cons.id_consulta = proc.consulta_id_consulta
LEFT JOIN profissional prof ON cons.profissional_cro = prof.cro
ORDER BY pc.nome, cons.data_consulta DESC;

-- VIEW 6: Procedimentos Mais Realizados (MIN() = "MÍNIMO"  Encontra o MENOR valor
-- MAX() = "MÁXIMO"  Encontra o MAIOR valor) já o SUM() = "SOMA"
CREATE VIEW vw_procedimentos_mais_realizados AS
SELECT 
    proc.nome_procedimento,
    COUNT(proc.id_procedimento) AS total_realizado,
    AVG(proc.orcamento) AS orcamento_medio,
    MIN(proc.orcamento) AS orcamento_minimo,
    MAX(proc.orcamento) AS orcamento_maximo,
    SUM(proc.orcamento) AS valor_total_gerado,
    prof.especialidade
FROM procedimento proc
JOIN consulta cons ON proc.consulta_id_consulta = cons.id_consulta
JOIN profissional prof ON cons.profissional_cro = prof.cro
GROUP BY proc.nome_procedimento, prof.especialidade
ORDER BY total_realizado DESC, valor_total_gerado DESC;

-- VIEW 7: Funcionários por Cargo e Clínica
CREATE VIEW vw_funcionarios_por_cargo AS
SELECT 
    f.cpf,
    f.nome AS funcionario_nome,
    f.funcao,
    c.nome AS cargo_nome,
    c.descricao AS descricao_cargo,
    cli.nome AS clinica_nome,
    loc.cidade,
    loc.bairro
FROM funcionario f
JOIN cargo c ON f.cargo_id_cargo = c.id_cargo
JOIN clinica cli ON f.clinica_cnpj = cli.cnpj
JOIN localizacao_clinica loc ON cli.cnpj = loc.clinica_cnpj
ORDER BY c.nome, f.nome;

-- VIEW 8: Pacientes por Localidade (CURDATE() é a DATA DE HOJE) count() Contagem, 
-- DISTINCT significa "DISTINTO" ou "ÚNICO". remove duplicatas e mostra apenas valores diferentes no banco
CREATE VIEW vw_pacientes_por_localidade AS
SELECT 
    loc_pc.cidade,
    loc_pc.bairro,
    COUNT(pc.cpf) AS total_pacientes,
    AVG(DATEDIFF(CURDATE(), pc.data_nascimento) / 365) AS idade_media,
    COUNT(DISTINCT pc.seguro_saude_id_seguro_saude) AS pacientes_com_seguro
FROM paciente pc
JOIN localizacao_pc loc_pc ON pc.cpf = loc_pc.paciente_cpf
GROUP BY loc_pc.cidade, loc_pc.bairro
ORDER BY total_pacientes DESC;

-- VIEW 9: Consultas e Procedimentos por Status
CREATE VIEW vw_consultas_status AS
SELECT 
    c.status AS status_consulta,
    COUNT(c.id_consulta) AS total_consultas,
    COUNT(proc.id_procedimento) AS total_procedimentos,
    AVG(proc.orcamento) AS orcamento_medio,
    SUM(proc.orcamento) AS valor_total_orcado,
    MIN(c.data_consulta) AS data_consulta_mais_antiga,
    MAX(c.data_consulta) AS data_consulta_mais_recente
FROM consulta c
LEFT JOIN procedimento proc ON c.id_consulta = proc.consulta_id_consulta
GROUP BY c.status
ORDER BY total_consultas DESC;

-- VIEW 10: Relatório Financeiro Completo (year ano, month mes)
CREATE VIEW vw_relatorio_financeiro AS
SELECT 
    cli.nome AS clinica_nome,
    YEAR(c.data_consulta) AS ano,
    MONTH(c.data_consulta) AS mes,
    f.metodo AS metodo_pagamento,
    COUNT(f.id_faturamento) AS total_transacoes,
    SUM(f.valor) AS valor_total,
    AVG(f.valor) AS valor_medio,
    proc.nome_procedimento,
    COUNT(DISTINCT c.paciente_cpf) AS pacientes_unicos
FROM faturamento f
JOIN clinica cli ON f.clinica_cnpj = cli.cnpj
JOIN procedimento proc ON f.procedimento_id_procedimento = proc.id_procedimento
JOIN consulta c ON proc.consulta_id_consulta = c.id_consulta
GROUP BY cli.nome, YEAR(c.data_consulta), MONTH(c.data_consulta), f.metodo, proc.nome_procedimento
ORDER BY ano DESC, mes DESC, valor_total DESC;

-- apos rodar cada view um por um por precaução rode agora esses comandos de teste

-- Testes admistrativos (para relatorios)
-- Para ver todas as consultas agendadas
SELECT * FROM vw_consultas_agendadas;

--  Para ver o faturamento do mês atual
SELECT * FROM vw_faturamento_mensal 
WHERE ano = YEAR(CURDATE()) AND mes = MONTH(CURDATE());

--  Para ver os pacientes por bairro para possiveis campanhas
SELECT * FROM vw_pacientes_por_localidade;

-- Testes para gestão da clinica caso queira visualizar se não dispensar os select, senão é so visualizar pelos views mesmo
-- Histórico de um paciente específico (nesse caso pus o where para ajudar a visualizar um unico cpf) 
SELECT * FROM vw_historico_paciente_completo 
WHERE cpf = '00000000001';

-- Procedimentos mais realizados
SELECT * FROM vw_procedimentos_mais_realizados;

-- Performance dos profissionais
SELECT * FROM vw_profissionais_especialidades;

