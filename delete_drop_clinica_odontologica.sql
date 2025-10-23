use clinica_odontologica;

-- delete de dados da tabela 20 deletes lembrando de rodar um de cada vez e seguindo as especificações
DELETE FROM cargo WHERE id_cargo = 36;
DELETE FROM faturamento WHERE id_faturamento = 1;
DELETE FROM faturamento WHERE metodo = 'dinheiro' and id_faturamento;
DELETE FROM faturamento WHERE valor < 250.00 and id_faturamento;
DELETE FROM faturamento WHERE procedimento_id_procedimento = 4;


DELETE FROM funcionario WHERE cpf = '01201201200';
DELETE FROM funcionario WHERE cpf = '23423423400' and funcao = 'Recepcionista';
SET SQL_SAFE_UPDATES = 0; -- desativa a segurança que não permite que seja excluido
SET SQL_SAFE_UPDATES = 1; -- ativa novamente a segurança
DELETE FROM funcionario WHERE nome LIKE 'Rita%';
DELETE FROM funcionario WHERE clinica_cnpj = '00000000000118';
DELETE FROM funcionario WHERE cargo_id_cargo = 17;


DELETE FROM faturamento
WHERE procedimento_id_procedimento IN (
    SELECT id_procedimento 
    FROM procedimento 
    WHERE orcamento BETWEEN 100.00 AND 300.00
);
DELETE FROM procedimento WHERE id_procedimento = 1;
SET SQL_SAFE_UPDATES = 0; -- desativa a segurança que não permite que seja excluido
SET SQL_SAFE_UPDATES = 1; -- ativa novamente a segurança
DELETE FROM procedimento WHERE nome_procedimento = 'Limpeza';
DELETE FROM procedimento WHERE orcamento > 500.00;
DELETE FROM faturamento
WHERE procedimento_id_procedimento IN (
    SELECT id_procedimento
    FROM procedimento
    WHERE consulta_id_consulta = 10
);

SET SQL_SAFE_UPDATES = 0; -- desativa a segurança que não permite que seja excluido
SET SQL_SAFE_UPDATES = 1; -- ativa novamente a segurança
DELETE FROM seguro_saude WHERE seguradora = 'Unimed';
DELETE FROM localizacao_clinica WHERE id_localizacao = 1;
DELETE FROM laboratorio_externo where id_laboratorio = 10;
DELETE FROM consulta WHERE status = 'cancelada';
delete from paciente where cpf = '00000000001';


-- drop database exclui o banco por inteiro fique-se avisado de salvar os scripts a seguir
drop database clinica_odontologica;






