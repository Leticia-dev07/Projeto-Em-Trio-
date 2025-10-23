# 🦷 Banco de Dados — Clínica Odontológica

Este projeto apresenta o **desenvolvimento completo de um banco de dados relacional** para uma **Clínica Odontológica**, implementado em **MySQL Workbench**.  
Ele foi modelado para garantir **integridade, consistência e normalização dos dados**, seguindo as **1ª, 2ª e 3ª Formas Normais**.

---

## 📘 Etapas do Projeto

O sistema foi desenvolvido em três camadas de modelagem:

### 🧩 Modelo Conceitual
Define as **entidades, relacionamentos e cardinalidades (1:1, 1:N, N:N)** de forma visual.  
> Essa etapa garante o entendimento claro do domínio e das regras do negócio antes da criação do banco.

### 💾 Modelo Lógico
Traduz o modelo conceitual para uma estrutura relacional, especificando:
- Chaves primárias e estrangeiras  
- Tipos de dados  
- Regras de integridade referencial  
- Cardinalidades aplicadas corretamente

### ⚙️ Modelo Físico
Implementado via **scripts SQL**, com criação de tabelas, relacionamentos, índices e regras de exclusão/atualização (`CASCADE`, `RESTRICT`, `SET NULL`).  

> Essa fase reflete o funcionamento real do banco no MySQL.

## 🧰 Stacks Utilizadas
###  Modelo Conceitual
- **brModelo** → usado para a criação do diagrama Entidade-Relacionamento (DER)
###  Modelo Lógico
- **MySQL Workbench** → utilizado para converter o modelo conceitual em estrutura relacional
###  Modelo Físico
- **MySQL Server / Workbench (SQL Scripts)** → responsável pela implementação real do banco

---

## 🧠 Normalização

O projeto segue as três primeiras formas normais:

| Forma Normal | Descrição |
|---------------|------------|
| **1FN** | Todos os atributos possuem valores atômicos e únicos. |
| **2FN** | Todos os atributos dependem totalmente da chave primária. |
| **3FN** | Não há dependências transitivas entre atributos. |

**Essas formas garantem a integridade, eliminam redundâncias e aumentam a eficiência.**

---

## 🧱 Estrutura das Tabelas

### 🔹 Principais Tabelas
- **clinica** → cadastro da clínica odontológica  
- **paciente** → dados pessoais e vínculo com seguro, localização e prontuário  
- **profissional** → profissionais (dentistas) com CRO e especialidades  
- **funcionario** → demais colaboradores da clínica  
- **consulta** → agendamentos entre paciente e profissional  
- **procedimento** → serviços realizados e valores  
- **faturamento** → registros de pagamentos e métodos  
- **prontuario** → histórico de saúde bucal do paciente  

### 🔹 Tabelas de Relacionamento e Apoio
- **procedimento_prontuario** (N:N)  
- **localizacao_pc** (1:1 paciente)  
- **localizacao_clinica** (1:1 clínica)  
- **laboratorio_externo** (1:N clínica)  
- **seguro_saude** (1:N paciente)  
- **cargo** (1:N funcionário)

---

## 🔗 Tipos de Relacionamento e CASCADE

O banco usa **regras de integridade referencial** para manter coerência entre as tabelas:

| Regra | Ação |
|--------|------|
| `ON DELETE CASCADE` | Remove automaticamente registros dependentes (ex: consultas ao excluir paciente). |
| `ON DELETE RESTRICT` | Impede exclusões se houver vínculos importantes. |
| `ON DELETE SET NULL` | Mantém o registro, mas remove o vínculo (ex: seguro de saúde). |
| `ON UPDATE CASCADE` | Atualiza chaves estrangeiras automaticamente. |

> 💡 Essas regras são fundamentais para **evitar dados órfãos** e manter o banco consistente.

---
## ⚙️ Uso do SQL_SAFE_UPDATES

Durante a execução dos comandos `DELETE`, foi necessário ativar e desativar temporariamente o modo de segurança do MySQL:

sql
SET SQL_SAFE_UPDATES = 0; -- desativa a segurança que não permite que seja excluído
-- comandos DELETE específicos
SET SQL_SAFE_UPDATES = 1; -- ativa novamente a segurança após os deletes


## 🧮 JOINS — Consultas Relacionais

Os **JOINS** foram amplamente utilizados para relacionar informações entre tabelas.  
Abaixo os principais tipos e exemplos de uso:

| Tipo de JOIN | Função |
|---------------|--------|
| **INNER JOIN** | Retorna apenas registros que possuem correspondência em ambas as tabelas. |
| **LEFT JOIN** | Retorna todos os registros da tabela principal, mesmo sem correspondência na secundária. |

### 🧾 Exemplos usados no projeto:
- Listar pacientes e seus prontuários  
  ```sql
  SELECT p.nome, pr.hist_saude_bucal
  FROM paciente p
  INNER JOIN prontuario pr ON p.prontuario_id_prontuario = pr.id_prontuario;

  
## ✨ Autoria
**Leticia Gabrielle,** 
**Victor Pereira,** 
**Arice Lustosa** 

🎓 *Estudante de [Análise e Desenvolvimento de Sistemas – Senac PE](https://www.pe.senac.br/)*  
💻 Foco em **modelagem de dados** e **manipulação de dados**.  
📚 Projeto desenvolvido para fins acadêmicos e aprendizado prático em **banco de dados relacionais**.

---
### 🌐 Contatos

**📚 Danilo Farias (Professor responsável pelo projeto)**  
[![GitHub](https://img.shields.io/badge/GitHub-000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/dansoaresfarias/dansoaresfarias) [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/dansoaresfarias/)

**Leticia Gabrielle**  
[![GitHub](https://img.shields.io/badge/GitHub-000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Leticia-dev07/Leticia-dev07) [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/leticia-gabrielle-034b80327)  

**Victor Pereira**  
[![GitHub](https://img.shields.io/badge/GitHub-000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/ghostsz568) [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/victor-pereira-b86aa8256/)  

**Arice Lustosa**  
[![GitHub](https://img.shields.io/badge/GitHub-000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/Dente457812)
