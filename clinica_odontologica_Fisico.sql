-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema clinica_odontologica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS clinica_odontologica DEFAULT CHARACTER SET utf8mb4;
USE clinica_odontologica;

-- -----------------------------------------------------
-- Table cargo
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS cargo (
  id_cargo INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  descricao TEXT NOT NULL,
  PRIMARY KEY (id_cargo))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table seguro_saude
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS seguro_saude (
  id_seguro_saude INT NOT NULL AUTO_INCREMENT,
  cobertura VARCHAR(45) NOT NULL,
  apolice VARCHAR(45) NOT NULL,
  seguradora VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_seguro_saude))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table clinica
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS clinica (
  cnpj VARCHAR(14) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (cnpj))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table laboratorio_externo  -- NOVA TABELA ADICIONADA
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS laboratorio_externo (
  id_laboratorio INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(15) NOT NULL,
  historico_trabalhos_realizados TEXT NOT NULL,
  clinica_cnpj VARCHAR(14) NOT NULL,
  PRIMARY KEY (id_laboratorio),
  INDEX fk_laboratorio_clinica_idx (clinica_cnpj ASC) VISIBLE,
  CONSTRAINT fk_laboratorio_clinica
    FOREIGN KEY (clinica_cnpj)
    REFERENCES clinica (cnpj)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table prontuario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS prontuario (
  id_prontuario INT NOT NULL AUTO_INCREMENT,
  hist_saude_bucal TEXT NOT NULL,
  PRIMARY KEY (id_prontuario))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table paciente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS paciente (
  cpf VARCHAR(14) NOT NULL,
  data_nascimento DATE NOT NULL,
  nome VARCHAR(45) NOT NULL,
  clinica_cnpj VARCHAR(14) NOT NULL,
  prontuario_id_prontuario INT NOT NULL,
  seguro_saude_id_seguro_saude INT NULL,
  PRIMARY KEY (cpf),
  INDEX fk_paciente_clinica_idx (clinica_cnpj ASC) VISIBLE,
  INDEX fk_paciente_prontuario_idx (prontuario_id_prontuario ASC) VISIBLE,
  INDEX fk_paciente_seguro_saude_idx (seguro_saude_id_seguro_saude ASC) VISIBLE,
  CONSTRAINT fk_paciente_clinica
    FOREIGN KEY (clinica_cnpj)
    REFERENCES clinica (cnpj)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_paciente_prontuario
    FOREIGN KEY (prontuario_id_prontuario)
    REFERENCES prontuario (id_prontuario)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT fk_paciente_seguro_saude
    FOREIGN KEY (seguro_saude_id_seguro_saude)
    REFERENCES seguro_saude (id_seguro_saude)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table localizacao_clinica
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS localizacao_clinica (
  id_localizacao INT NOT NULL AUTO_INCREMENT,
  clinica_cnpj VARCHAR(14) NOT NULL,
  cidade VARCHAR(45) NOT NULL,
  rua VARCHAR(45) NOT NULL,
  bairro VARCHAR(45) NOT NULL,
  cep VARCHAR(9) NOT NULL,
  numero VARCHAR(10) NOT NULL,
  PRIMARY KEY (id_localizacao),
  INDEX fk_localizacao_clinica_idx (clinica_cnpj ASC) VISIBLE,
  UNIQUE INDEX uc_clinica_localizacao (clinica_cnpj ASC) VISIBLE,
  CONSTRAINT fk_localizacao_clinica
    FOREIGN KEY (clinica_cnpj)
    REFERENCES clinica (cnpj)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table localizacao_pc
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS localizacao_pc (
  id_localizacao INT NOT NULL AUTO_INCREMENT,
  paciente_cpf VARCHAR(14) NOT NULL,
  cidade VARCHAR(45) NOT NULL,
  rua VARCHAR(45) NOT NULL,
  bairro VARCHAR(45) NOT NULL,
  cep VARCHAR(9) NOT NULL,
  numero VARCHAR(10) NOT NULL,
  PRIMARY KEY (id_localizacao),
  INDEX fk_localizacao_paciente_idx (paciente_cpf ASC) VISIBLE,
  UNIQUE INDEX uc_paciente_localizacao (paciente_cpf ASC) VISIBLE,
  CONSTRAINT fk_localizacao_paciente
    FOREIGN KEY (paciente_cpf)
    REFERENCES paciente (cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table funcionario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS funcionario (
  cpf VARCHAR(14) NOT NULL,
  funcao VARCHAR(30) NOT NULL,
  nome VARCHAR(60) NOT NULL,
  clinica_cnpj VARCHAR(14) NOT NULL,
  cargo_id_cargo INT NOT NULL,
  PRIMARY KEY (cpf),
  INDEX fk_funcionario_clinica_idx (clinica_cnpj ASC) VISIBLE,
  INDEX fk_funcionario_cargo_idx (cargo_id_cargo ASC) VISIBLE,
  CONSTRAINT fk_funcionario_clinica
    FOREIGN KEY (clinica_cnpj)
    REFERENCES clinica (cnpj)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_funcionario_cargo
    FOREIGN KEY (cargo_id_cargo)
    REFERENCES cargo (id_cargo)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table profissional
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS profissional (
  cro INT NOT NULL,
  especialidade VARCHAR(45) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  clinica_cnpj VARCHAR(14) NOT NULL,
  PRIMARY KEY (cro),
  INDEX fk_profissional_clinica_idx (clinica_cnpj ASC) VISIBLE,
  CONSTRAINT fk_profissional_clinica
    FOREIGN KEY (clinica_cnpj)
    REFERENCES clinica (cnpj)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table consulta
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS consulta (
  id_consulta INT NOT NULL AUTO_INCREMENT,
  tipo VARCHAR(15) NOT NULL,
  data_consulta DATETIME NOT NULL,
  status VARCHAR(45) NOT NULL,
  paciente_cpf VARCHAR(14) NOT NULL,
  profissional_cro INT NOT NULL,
  PRIMARY KEY (id_consulta),
  INDEX fk_consulta_paciente_idx (paciente_cpf ASC) VISIBLE,
  INDEX fk_consulta_profissional_idx (profissional_cro ASC) VISIBLE,
  CONSTRAINT fk_consulta_paciente
    FOREIGN KEY (paciente_cpf)
    REFERENCES paciente (cpf)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_consulta_profissional
    FOREIGN KEY (profissional_cro)
    REFERENCES profissional (cro)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table procedimento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS procedimento (
  id_procedimento INT NOT NULL AUTO_INCREMENT,
  nome_procedimento VARCHAR(40) NOT NULL,
  orcamento DECIMAL(10,2) NOT NULL,
  descricao TEXT NOT NULL,
  consulta_id_consulta INT NOT NULL,
  PRIMARY KEY (id_procedimento),
  INDEX fk_procedimento_consulta_idx (consulta_id_consulta ASC) VISIBLE,
  CONSTRAINT fk_procedimento_consulta
    FOREIGN KEY (consulta_id_consulta)
    REFERENCES consulta (id_consulta)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table procedimento_prontuario
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS procedimento_prontuario (
  procedimento_id_procedimento INT NOT NULL,
  prontuario_id_prontuario INT NOT NULL,
  PRIMARY KEY (procedimento_id_procedimento, prontuario_id_prontuario),
  INDEX fk_proc_pront_prontuario_idx (prontuario_id_prontuario ASC) VISIBLE,
  CONSTRAINT fk_proc_pront_procedimento
    FOREIGN KEY (procedimento_id_procedimento)
    REFERENCES procedimento (id_procedimento)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_proc_pront_prontuario
    FOREIGN KEY (prontuario_id_prontuario)
    REFERENCES prontuario (id_prontuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table faturamento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS faturamento (
  id_faturamento INT NOT NULL AUTO_INCREMENT,
  valor DECIMAL(10,2) NOT NULL,
  metodo ENUM('pix', 'cartao', 'dinheiro') NOT NULL,
  clinica_cnpj VARCHAR(14) NOT NULL,
  procedimento_id_procedimento INT NOT NULL,
  PRIMARY KEY (id_faturamento),
  INDEX fk_faturamento_clinica_idx (clinica_cnpj ASC) VISIBLE,
  INDEX fk_faturamento_procedimento_idx (procedimento_id_procedimento ASC) VISIBLE,
  CONSTRAINT fk_faturamento_clinica
    FOREIGN KEY (clinica_cnpj)
    REFERENCES clinica (cnpj)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_faturamento_procedimento
    FOREIGN KEY (procedimento_id_procedimento)
    REFERENCES procedimento (id_procedimento)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;