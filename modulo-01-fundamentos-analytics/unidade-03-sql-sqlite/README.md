# Unidade 03 — SQL com SQLite

Esta unidade apresenta a utilização de **SQL e SQLite** para exploração, agregação e análise dos dados de acidentes rodoviários registrados pela **Polícia Rodoviária Federal (PRF)**.

A atividade teve como objetivo transformar o conjunto de dados em consultas e indicadores capazes de apoiar a análise dos acidentes registrados em 2025.

---

## 📝 Atividades Desenvolvidas

### Atividade 3 — Classificação Inicial das Variáveis

Nesta atividade foi realizada a classificação inicial das variáveis do conjunto de dados da PRF 2025 conforme sua função analítica.

As variáveis foram organizadas em quatro grupos:

- **Temporais:** `data_inversa`, `horario`, `dia_semana`;
- **Geográficas:** `uf`, `br`, `municipio`, `km`;
- **Explicativas do acidente:** `causa_acidente`, `tipo_acidente`, `fase_dia`, `tipo_pista`;
- **Gravidade / Desfecho:** `mortos`, `feridos`, `pessoas`.

A atividade também destaca que as variáveis de **gravidade/desfecho** representam consequências observadas do acidente e, portanto, não devem ser utilizadas como variáveis explicativas.

**Arquivo da atividade:**

`Atividade_03_Classificacao_Inicial_Variaveis_PRF_2025.pdf`

---

## 🎯 Objetivo

Aplicar consultas SQL sobre os dados da PRF para:

* explorar o conjunto de dados;
* gerar indicadores;
* identificar padrões;
* realizar agrupamentos;
* comparar diferentes dimensões dos acidentes;
* consolidar consultas por meio de Views;
* exportar resultados para arquivos CSV.

---

## 🛠️ Tecnologias Utilizadas

* SQL
* SQLite
* CSV
* Git
* GitHub

---

## 📊 Análises Desenvolvidas

As consultas SQL foram utilizadas para gerar diferentes indicadores e recortes analíticos dos acidentes registrados pela PRF em 2025.

| Arquivo                               | Análise                                                       |
| ------------------------------------- | ------------------------------------------------------------- |
| `resultado_uf.csv`                    | Distribuição dos acidentes por Unidade Federativa             |
| `resultado_br.csv`                    | Análise dos acidentes por rodovia federal                     |
| `resultado_mensal.csv`                | Distribuição mensal das ocorrências                           |
| `resultado_causa.csv`                 | Análise das principais causas dos acidentes                   |
| `resultado_clima.csv`                 | Distribuição conforme as condições meteorológicas             |
| `resultado_fase_dia.csv`              | Análise dos acidentes conforme a fase do dia                  |
| `resultado_tipo_acidente.csv`         | Distribuição por tipo de acidente                             |
| `resultado_tipo_pista.csv`            | Análise conforme o tipo de pista                              |
| `resultado_bivariado.csv`             | Análise envolvendo a relação entre duas variáveis             |
| `resultado_percentual_letalidade.csv` | Indicador percentual relacionado à letalidade das ocorrências |
| `vw_indicadores_mensais.csv`          | Resultado da View de indicadores mensais                      |
| `vw_indicadores_uf_br.csv`            | Resultado da View de indicadores por UF e BR                  |

---

## 🗄️ Consultas SQL

O arquivo principal da atividade está localizado em:

```text
sql/projeto_prf_analytics.sql
```

Esse arquivo reúne as consultas utilizadas para analisar os dados e gerar os resultados disponíveis na pasta `resultados`.

Durante a atividade foram trabalhados conceitos como:

* `SELECT`
* `WHERE`
* `GROUP BY`
* `ORDER BY`
* funções de agregação;
* contagens;
* somatórios;
* médias;
* agrupamentos por diferentes dimensões;
* criação de indicadores;
* criação e utilização de Views.

---

## 👁️ Views SQL

Além das consultas analíticas, foram criadas **Views SQL** para consolidar indicadores e facilitar a reutilização das consultas.

As Views geraram os seguintes resultados:

* `vw_indicadores_mensais.csv`
* `vw_indicadores_uf_br.csv`

As definições das Views estão disponíveis no arquivo:

```text
sql/projeto_prf_analytics.sql
```

---

## 📁 Estrutura da Unidade

```text
unidade-03-sql-sqlite/
│
├── README.md
│
├── Atividade_03_Classificacao_Inicial_Variaveis_PRF_2025.pdf
│
├── sql/
│   └── projeto_prf_analytics.sql
│
└── resultados/
    ├── resultado_percentual_letalidade.csv
    ├── resultado_bivariado.csv
    ├── resultado_br.csv
    ├── resultado_causa.csv
    ├── resultado_clima.csv
    ├── resultado_fase_dia.csv
    ├── resultado_mensal.csv
    ├── resultado_tipo_acidente.csv
    ├── resultado_tipo_pista.csv
    ├── resultado_uf.csv
    ├── vw_indicadores_mensais.csv
    └── vw_indicadores_uf_br.csv
```

---

## 📂 Dataset

O conjunto de dados original utilizado nesta atividade está centralizado na pasta:

[`../dados`](../dados/)

Essa organização evita duplicação do dataset entre as diferentes unidades do projeto e mantém uma única fonte de dados para as análises.

---

## 📈 Principais Dimensões Analisadas

Durante a atividade foram exploradas diferentes características dos acidentes, entre elas:

* Unidade Federativa;
* rodovia federal;
* mês da ocorrência;
* causa do acidente;
* tipo de acidente;
* condições meteorológicas;
* fase do dia;
* tipo de pista;
* letalidade;
* relações entre diferentes variáveis.

---

## 📚 Aprendizados

A atividade permitiu aplicar SQL sobre um conjunto de dados real, desenvolvendo conhecimentos práticos relacionados a:

* leitura e exploração de dados;
* construção de consultas;
* aplicação de filtros;
* agrupamento de registros;
* ordenação de resultados;
* utilização de funções de agregação;
* geração de indicadores;
* análise de múltiplas dimensões;
* criação de Views;
* exportação dos resultados para CSV;
* organização de código SQL para análise de dados.

---

## 🔗 Navegação

* [Voltar para o README principal](../README.md)
* [Acessar o arquivo SQL](./sql/projeto_prf_analytics.sql)
* [Acessar os resultados](./resultados/)
