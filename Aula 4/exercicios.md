1. 

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

# 1ª Forma Normal

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

### Funcionario_habilidade
|id_funcionario|id_habilidade|
|:---:|:---:|
|1|1|
|1|2|
|1|3|
|2|4|
|2|5|