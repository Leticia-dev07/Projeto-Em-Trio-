-- alter table rodar após os views
use clinica_odontologica;
-- 1 Adiciona uma coluna de email na tabela clinica
ALTER TABLE clinica ADD COLUMN email VARCHAR(100) NULL;
-- 2 Adiciona uma coluna de observações na tabela consulta
ALTER TABLE consulta ADD COLUMN observacoes TEXT NULL;
-- 3 Adiciona uma coluna de status na tabela faturamento
ALTER TABLE faturamento ADD COLUMN status_pagamento ENUM('pendente','pago','cancelado') NOT NULL DEFAULT 'pendente';
-- 4. Adiciona coluna de complemento de endereço na tabela localizacao_clinica
ALTER TABLE localizacao_clinica ADD COLUMN complemento VARCHAR(50) NULL;
-- 5. Adiciona uma coluna de data de contratação na tabela funcionario
ALTER TABLE funcionario ADD COLUMN data_contratacao DATE NULL;
-- 16. Adicionar coluna de data de validade da apólice na tabela seguro_saude
ALTER TABLE seguro_saude ADD COLUMN data_validade DATE NULL;
-- 7. Adicionar coluna de horário de atendimento na tabela consulta
ALTER TABLE consulta ADD COLUMN horario_atendimento TIME NULL;
-- 8. Adiciona coluna de turno de trabalho na tabela funcionario
ALTER TABLE funcionario ADD COLUMN turno ENUM('Manhã','Tarde','Noite') NULL;
-- 9. Adiciona coluna de observações no laboratório externo
ALTER TABLE laboratorio_externo ADD COLUMN observacoes TEXT NULL;
-- 10. Adiciona coluna de complemento de endereço na tabela localizacao_pc
ALTER TABLE localizacao_pc ADD COLUMN complemento VARCHAR(50) NULL;

-- joins rodar um por um após os alter
-- 1 Lista de pacientes com seus prontuários(facilitando na hora de visualizar. Aqui ele mostra o nome do paciente e seu historico)
SELECT p.nome AS 'Paciente', pr.hist_saude_bucal AS 'Histórico de Saúde Bucal'
FROM paciente p
INNER JOIN prontuario pr ON p.prontuario_id_prontuario = pr.id_prontuario;

-- 2 Lista de pacientes com seus seguros de saúde(se houver seguro, ou seja filtrando-os)
SELECT p.nome AS 'Paciente', s.seguradora AS 'Seguradora'
FROM paciente p
LEFT JOIN seguro_saude s ON p.seguro_saude_id_seguro_saude = s.id_seguro_saude;

-- 3 Lista de consultas com pacientes e profissionais
SELECT c.id_consulta AS 'ID Consulta', p.nome AS 'Paciente', pr.nome AS 'Profissional'
FROM consulta c
INNER JOIN paciente p ON c.paciente_cpf = p.cpf
INNER JOIN profissional pr ON c.profissional_cro = pr.cro;

-- 4 Lista de procedimentos com a consulta e o paciente
SELECT proc.nome_procedimento AS 'Procedimento', c.id_consulta AS 'ID Consulta', p.nome AS 'Paciente'
FROM procedimento proc
INNER JOIN consulta c ON proc.consulta_id_consulta = c.id_consulta
INNER JOIN paciente p ON c.paciente_cpf = p.cpf;

-- 5 Lista de faturamento com clínica e procedimento
SELECT f.valor AS 'Valor', f.metodo AS 'Método', cl.nome AS 'Clínica', proc.nome_procedimento AS 'Procedimento'
FROM faturamento f
INNER JOIN clinica cl ON f.clinica_cnpj = cl.cnpj
INNER JOIN procedimento proc ON f.procedimento_id_procedimento = proc.id_procedimento;

-- 6 Lista de funcionários com cargo e clínica
SELECT f.nome AS 'Funcionário', c.nome AS 'Cargo', cl.nome AS 'Clínica'
FROM funcionario f
INNER JOIN cargo c ON f.cargo_id_cargo = c.id_cargo
INNER JOIN clinica cl ON f.clinica_cnpj = cl.cnpj;

-- 7 Lista de profissionais com clínica e especialidade
SELECT pr.nome AS 'Profissional', pr.especialidade AS 'Especialidade', cl.nome AS 'Clínica'
FROM profissional pr
INNER JOIN clinica cl ON pr.clinica_cnpj = cl.cnpj;

-- 8 Lista de pacientes com endereço
SELECT p.nome AS 'Paciente', l.cidade AS 'Cidade', l.bairro AS 'Bairro', l.rua AS 'Rua'
FROM paciente p
INNER JOIN localizacao_pc l ON p.cpf = l.paciente_cpf;

-- 9 Lista de clínicas com endereço(obs: todas tem)
SELECT cl.nome AS 'Clínica', l.cidade AS 'Cidade', l.bairro AS 'Bairro', l.rua AS 'Rua'
FROM clinica cl
INNER JOIN localizacao_clinica l ON cl.cnpj = l.clinica_cnpj;

-- 10 Lista de consultas com status e paciente
SELECT c.id_consulta AS 'ID Consulta', c.status AS 'Status', p.nome AS 'Paciente'
FROM consulta c
INNER JOIN paciente p ON c.paciente_cpf = p.cpf;

-- 11 Conta quantos pacientes cada clínica possui(obs:sim cada clinica possui somente um)
SELECT cl.nome AS 'Clínica', COUNT(p.cpf) AS 'Total de Pacientes'
FROM clinica cl
LEFT JOIN paciente p ON cl.cnpj = p.clinica_cnpj
GROUP BY cl.nome;

-- 12 Conta o número de consultas por paciente(obs: sim cada um so fez uma consulta para preenchimento das tabelas )
SELECT p.nome AS 'Paciente', COUNT(c.id_consulta) AS 'Total de Consultas'
FROM paciente p
LEFT JOIN consulta c ON p.cpf = c.paciente_cpf
GROUP BY p.nome;

-- 13 Soma o faturamento total por clínica
SELECT cl.nome AS 'Clínica', SUM(f.valor) AS 'Faturamento Total'
FROM clinica cl
LEFT JOIN faturamento f ON cl.cnpj = f.clinica_cnpj
GROUP BY cl.nome;

-- 14 Encontra a maior e menor consulta por paciente (data_consulta)
SELECT p.nome AS 'Paciente', MAX(c.data_consulta) AS 'Última Consulta', MIN(c.data_consulta) AS 'Primeira Consulta'
FROM paciente p
LEFT JOIN consulta c ON p.cpf = c.paciente_cpf
GROUP BY p.nome;

-- 15 Conta o número de procedimentos por consulta realizada
SELECT c.id_consulta AS 'ID Consulta', COUNT(proc.id_procedimento) AS 'Total de Procedimentos'
FROM consulta c
LEFT JOIN procedimento proc ON c.id_consulta = proc.consulta_id_consulta
GROUP BY c.id_consulta;

-- 16 Lista de pacientes com seguro, usando COALESCE para mostrar "Sem Seguro"(obs: está correto fiz somente 20 inserts e todos tem seguradora então não me retornará o sem seguro)
SELECT p.nome AS 'Paciente', COALESCE(s.seguradora, 'Sem Seguro') AS 'Seguradora'
FROM paciente p
LEFT JOIN seguro_saude s ON p.seguro_saude_id_seguro_saude = s.id_seguro_saude;

-- 17 Conta o número de profissionais por cada clínica(obs: nesse são somente os profissionais que realizam procedimentos odontologicos)
SELECT cl.nome AS 'Clínica', COUNT(pr.cro) AS 'Total de Profissionais'
FROM clinica cl
LEFT JOIN profissional pr ON cl.cnpj = pr.clinica_cnpj
GROUP BY cl.nome;

-- 18 Encontra o valor máximo e mínimo de procedimento por clínica
SELECT cl.nome AS 'Clínica', MAX(proc.orcamento) AS 'Orçamento Máximo', MIN(proc.orcamento) AS 'Orçamento Mínimo'
FROM clinica cl
LEFT JOIN paciente p ON cl.cnpj = p.clinica_cnpj
LEFT JOIN consulta c ON p.cpf = c.paciente_cpf
LEFT JOIN procedimento proc ON c.id_consulta = proc.consulta_id_consulta
GROUP BY cl.nome;

-- 19 Conta consultas por profissional e usar COALESCE para zeros(obs: caso haja, não tem nesse caso!)
SELECT pr.nome AS 'Profissional', COALESCE(COUNT(c.id_consulta),0) AS 'Total de Consultas'
FROM profissional pr
LEFT JOIN consulta c ON pr.cro = c.profissional_cro
GROUP BY pr.nome;

-- 20 Soma faturamento por método de pagamento e clínica
SELECT cl.nome AS 'Clínica', f.metodo AS 'Método', SUM(f.valor) AS 'Total'
FROM faturamento f
INNER JOIN clinica cl ON f.clinica_cnpj = cl.cnpj
GROUP BY cl.nome, f.metodo;




