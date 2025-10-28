2. Entidade Associativa: No modelo da biblioteca (LIVRO, USUARIO), desenhe o diagrama Crow's Foot que resolve o relacionamento N:M "empresta", criando a entidade EMPRESTIMO. Que atributos EMPRESTIMO teria? (Pense em data de empréstimo, data de devolução, etc.)

```mermaid
erDiagram
	direction LR

    USUARIO ||--O{ EMPRESTIMO : "empresta"
    LIVRO ||--o{ EMPRESTIMO : "contém"

    LIVRO {
        int ISBN PK
        string titulo
        string editora
        int num_pag
    }

    USUARIO {
        string CPF PK
        string nome
        int idade

    }

    EMPRESTIMO {
        string cpf FK
        int ISBN FK
        date emprestimo
        date devolucao
    }
```

3. Entidade Associativa: Considerando um sistema de compras, resolva o relacionamento N:M "faz" da entidade PRODUTO e PEDIDO. A entidade associativa deve conter a quantidade de cada produto, e o preço unitário.

```mermaid
erDiagram
    direction LR

    PRODUTO ||--o{ ITEM_PEDIDO : "está em"
    PEDIDO ||--|{ ITEM_PEDIDO : "contém"

    PRODUTO {
        int id PK
        string nome
        decimal preco
    }

    PEDIDO {
        int id PK
        int id_cliente FK
        date data
        decimal valor_total
    }

    ITEM_PEDIDO {
        int id_produto FK
        int id_pedido FK
        decimal preco_unitario
        int quantidade
    }
```