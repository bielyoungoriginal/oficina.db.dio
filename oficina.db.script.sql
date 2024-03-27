DROP DATABASE IF EXISTS mydb; 
CREATE DATABASE mydb;
USE mydb;

CREATE TABLE veículo (
  id INT AUTO_INCREMENT,
  nome_prop VARCHAR(45) NOT NULL,
  num_proprietario VARCHAR(45) NOT NULL,
  placa CHAR(7) NOT NULL,
  modelo VARCHAR(45),
  PRIMARY KEY (id)
);

CREATE TABLE servico (
  id INT NOT NULL AUTO_INCREMENT,
  nome_servico VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE servico_veiculo (
  id INT NOT NULL AUTO_INCREMENT,
  veículo_id INT NOT NULL,
  servico_id INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_servico_veiculo_veículo1_idx (veículo_id ASC),
  INDEX fk_servico_veiculo_servico1_idx (servico_id ASC),
  CONSTRAINT fk_servico_veiculo_veículo1
    FOREIGN KEY (veículo_id)
    REFERENCES veículo (id),
  CONSTRAINT fk_servico_veiculo_servico1
    FOREIGN KEY (servico_id)
    REFERENCES servico (id)
);

CREATE TABLE mecanicos (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  endereco VARCHAR(45)NOT NULL,
  cpf_mec VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE servico_mecanicos (
  id INT NOT NULL AUTO_INCREMENT,
  servico_id INT NOT NULL,
  mecanicos_id INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_servico_mecanicos_servico1_idx (servico_id ASC),
  INDEX fk_servico_mecanicos_mecanicos1_idx (mecanicos_id ASC),
  CONSTRAINT fk_servico_mecanicos_servico1
    FOREIGN KEY (servico_id)
    REFERENCES servico (id),
  CONSTRAINT fk_servico_mecanicos_mecanicos1
    FOREIGN KEY (mecanicos_id)
    REFERENCES mecanicos (id)
);

CREATE TABLE peca (
  id INT NOT NULL AUTO_INCREMENT,
  nome_peca VARCHAR(45) NOT NULL,
  valor_peca VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE servico_peca (
  id INT NOT NULL AUTO_INCREMENT,
  servico_id INT NOT NULL,
  peca_id INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_servico_peca_servico1_idx (servico_id ASC),
  INDEX fk_servico_peca_peca1_idx (peca_id ASC),
  CONSTRAINT fk_servico_peca_servico1
    FOREIGN KEY (servico_id)
    REFERENCES servico (id),
  CONSTRAINT fk_servico_peca_peca1
    FOREIGN KEY (peca_id)
    REFERENCES peca (id)
);

CREATE TABLE mao_de_obra (
  id INT NOT NULL AUTO_INCREMENT,
  data_entrega DATE NOT NULL,
  valor VARCHAR(45) NOT NULL,
  descritivo_valor VARCHAR(45) NOT NULL,
  autorizacao TINYINT NULL DEFAULT 0,
  servico_veiculo_id INT NOT NULL,
  servico_mecanicos_id INT NOT NULL,
  servico_peca_id INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_mao_de_obra_servico_veiculo1_idx (servico_veiculo_id ASC),
  INDEX fk_mao_de_obra_servico_mecanicos1_idx (servico_mecanicos_id ASC),
  INDEX fk_mao_de_obra_servico_peca1_idx (servico_peca_id ASC),
  CONSTRAINT fk_mao_de_obra_servico_veiculo1
    FOREIGN KEY (servico_veiculo_id)
    REFERENCES servico_veiculo (id),
  CONSTRAINT fk_mao_de_obra_servico_mecanicos1
    FOREIGN KEY (servico_mecanicos_id)
    REFERENCES servico_mecanicos (id),
  CONSTRAINT fk_mao_de_obra_servico_peca1
    FOREIGN KEY (servico_peca_id)
    REFERENCES servico_peca (id)
);