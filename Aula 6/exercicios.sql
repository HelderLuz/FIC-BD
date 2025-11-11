insert into cliente  (nome, email, cpf, data_nascimento) values 
  ('João da Silva', 'joao.silva@email.com', '11122233344', '1990-05-15'),
  ('Bryan da Silva', 'bryan.silva@email.com', '22233344455', '2005-06-21');

update cliente
set data_nascimento = '2008-06-15'
where id = 2;

delete from cliente where id = 1;

select * from cliente;

-- 1. Consulta Simples: Escreva uma consulta que retorne o nome e o preco de todos os produtos.
select nome, preco from produto

-- 2. Filtro por Preço: Escreva uma consulta que retorne apenas os produtos com preco menor que 100
select * from produto where preco < 100

-- 3. Filtro por Texto: Escreva uma consulta que encontre todos os clientes cujo email termina com @email.com.
select * from cliente where email like '%@email.com'

-- 4. Ordenação: Liste todos os pedidos, do mais antigo para o mais recente, mostrando o id do pedido e a data_pedido.

INSERT INTO pedido (status, id_cliente) VALUES
('Pago', 21),
('Pendente', 2);

SELECT * FROM pedido

INSERT INTO item_pedido VALUES
(21,1,1,3500.00),
(21,3,2,2200.00),
(22,2,2,80.00);

select id, data_pedido from pedido  ORDER BY data_pedido