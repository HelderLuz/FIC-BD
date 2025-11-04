# 1. 

```mermaid
erDiagram
    funcionario_habilidades {
        int id_funcionario PK
        string nome_funcionario
        string habilidades
    }
```

|id_funcionario|nome_funcionario|habilidades|
|:---:|:---:|:---:|
|1|Carlos|'SQL, Python, Java'|
|2|Bruna|'Power BI, Excel'

## 1ª Forma Normal

```mermaid
erDiagram

    funcionario {
        int id PK
        string nome
    }

    habilidade {
        int id PK
        string nome
    }

    funcionario_habilidade {
        int id_funcionario FK
        int id_habilidade FK
    }
```

<div style='display:grid; grid-template-columns: repeat(2, 1fr);'>
<div>

### Funcionário
|id|nome|
|:---:|:---:|
|1|Carlos|
|2|Bruna|

### Habilidade
|id|nome|
|:---:|:---:|
|1|SQL|
|2|Python|
|3|Java|
|4|Power BI|
|5|Excel|
</div>

<div>

### Funcionario_habilidade
|id_funcionario|id_habilidade|
|:---:|:---:|
|1|1|
|1|2|
|1|3|
|2|4|
|2|5|
</div>

</div>

<hr>

# 2.

```mermaid
erDiagram
    alocacao_projetos {
        int id_projeto PK
        int id_participante PK
        string nome_projeto
        string nome_participante
        string cargo_participante
        int horas_alocadas
    }
```

Violação 2FN

`nome_projeto` -> depende `id_projeto`
`nome_participante` e `cargo_participante` -> `id_participante` 

```mermaid
erDiagram
    alocacao_projetos {
        int id_projeto PK,FK
        int id_participante PK,FK
        int horas_alocadas
    }

    projeto {
        int id PK
        string nome
    }

    participante {
        int id PK
        string nome
        string cargo
    }
```

### alocacao_projeto
|id_projeto|id_participante|horas_alocadas|
|:---:|:---:|:---:|
|P101|E5|120|
|P101|E8|80|
|P102|E5|90|

### participante
|id|nome|cargo|
|---|---|---|
|E5|Ana|Analista Jr.|
|E8|Pedro|Programador Jr.|

### projeto
|id|nome|
|---|---|
|P101|Zeus|
|P102|Apolo|


<hr>

# 3.

```mermaid
erDiagram
    livros {
        int id_livro PK
        string titulo_livro
        int id_editora
        string nome_editora
        string cidade_editora
    }
```

Viola 3FN
`nome_editora` e `cidade_editora` -> id_editora (não chave)

```mermaid
erDiagram
    editora {
        int id PK
        string nome
        string cidade
    }

    livro {
        int id PK
        string titulo 
        int id_editora FK
    }
```

### editora
|id|nome|cidade|
|---|---|---|
|ED12|Tech Books|São Paulo|

### livro
|id|titulo|id_editora|
|---|---|---|
|L01|SQL para Iniciantes|ED12|
|L02|A Arte da Normalização|ED12|

<hr>

# 4.

```mermaid
erDiagram
    matricula {
        int id_matricula PK
        int id_aluno
        string nome_aluno
        int id_disciplina
        string nome_disciplina
    }
```

Viola 3FN
`nome_aluno` -> `id_aluno` (não chave)
`nome_disciplina` -> `id_disciplina` (não chave)

```mermaid
erDiagram
    aluno {
        int id PK
        string nome
    }

    disciplina {
        int id PK
        string nome
    }

    matricula {
        int id PK
        int id_aluno FK
        int id_disciplina FK
    }
```

### aluno
|id|nome|
|---|---|
|1|Ana|

### disciplina
|id|nome|
|---|---|
|5|Matemática|
|6|Física|

### matricula
|id|id_aluno|id_disciplina|
|:---:|:---:|:---:|
|101|1|5|
|102|1|6|