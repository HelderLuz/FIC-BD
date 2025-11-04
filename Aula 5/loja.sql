CREATE DATABASE loja;

USE loja;

CREATE TABLE cliente (
  id INTEGER PRIMARY KEY AUTO_INCREMENT, 
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  cpf CHAR(11) UNIQUE NOT NULL,
  data_nascimento DATE
);

CREATE TABLE produto (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT,
  preco NUMERIC(10, 2) NOT NULL CHECK (preco > 0)
);

CREATE TABLE pedido (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(20) DEFAULT 'Pendente',
  id_cliente INTEGER NOT NULL,

  FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE item_pedido (
  id_pedido INTEGER NOT NULL,
  id_produto INTEGER NOT NULL,
  quantidade INTEGER NOT NULL DEFAULT 1,
  preco_unitario NUMERIC(10, 2) NOT NULL,

  PRIMARY KEY (id_pedido, id_produto),
  FOREIGN KEY (id_pedido) REFERENCES pedido(id),
  FOREIGN KEY (id_produto) REFERENCES produto(id)
);