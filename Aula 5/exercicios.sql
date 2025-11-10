CREATE TABLE categoria (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) UNIQUE NOT NULL,
  descricao TEXT
)

ALTER TABLE produto 
  ADD COLUMN id_categoria INTEGER,
  ADD CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES categoria(id); 

-- Relacionamento 1:1: Escreva o CREATE TABLE para uma tabela endereco_entrega que se relaciona com CLIENTE (um cliente tem um endereço de entrega). A tabela deve ter id, logradouro, numero, cidade, cep e a FK para cliente.

CREATE TABLE endereco_entrega (
  id_cliente INTEGER PRIMARY KEY,
  logradouro VARCHAR(100) NOT NULL,
  numero INTEGER NOT NULL,
  cidade VARCHAR(50) NOT NULL,
  cep VARCHAR(9) NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id)
)