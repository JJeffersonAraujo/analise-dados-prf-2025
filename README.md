# 📊 Análise de Dados de Acidentes PRF 2025

Projeto de **Data Analytics** desenvolvido utilizando dados públicos de acidentes registrados pela **Polícia Rodoviária Federal (PRF)** durante o ano de 2025.

O projeto apresenta um fluxo completo de análise de dados, passando pelas etapas de:

- exploração inicial dos dados;
- preparação e tratamento;
- consultas estruturadas;
- criação de indicadores;
- análise exploratória de dados (EDA);
- identificação de padrões;
- construção de insights;
- comunicação analítica dos resultados.

---

# 🎯 Objetivo do Projeto

O objetivo deste projeto é aplicar técnicas de análise de dados para compreender padrões relacionados aos acidentes rodoviários registrados pela PRF, buscando responder perguntas como:

- Quais estados apresentam maior concentração de acidentes?
- Quais fatores estão relacionados aos acidentes fatais?
- Quais causas possuem maior proporção de fatalidade?
- Quais períodos e condições apresentam maior risco relativo?
- Quais características aparecem associadas aos acidentes mais graves?

Além da análise técnica, o projeto demonstra a aplicação prática de ferramentas utilizadas no mercado de **Data Analytics**.

---

# 📑 Sumário

- [Arquitetura do Projeto](#-arquitetura-do-projeto)
- [Módulo 01 — Fundamentos de Analytics](#-módulo-01--fundamentos-de-analytics)
  - [Unidade 01 — Excel: Fundamentos](#unidade-01--excel-fundamentos)
  - [Unidade 02 — Excel: Análise e Visualização](#unidade-02--excel-análise-e-visualização)
  - [Unidade 03 — SQL com SQLite](#unidade-03--sql-com-sqlite)
  - [Unidade 04 — Python: Preparação dos Dados](#unidade-04--python-preparação-dos-dados)
- [Módulo 02 — Data Analytics e EDA](#-módulo-02--data-analytics-e-eda)
  - [Unidade 05 — Analytics PRF](#unidade-05--analytics-prf)
- [Principais Insights](#-principais-insights)
- [Relatório Analítico EDA](#-relatório-analítico-eda)
- [Tecnologias Utilizadas](#-tecnologias-utilizadas)
- [Estrutura do Repositório](#-estrutura-do-repositório)
- [Como Reproduzir a Análise](#-como-reproduzir-a-análise)
- [Habilidades Demonstradas](#-habilidades-demonstradas-neste-projeto)
- [Como Este Projeto Pode Evoluir](#-como-este-projeto-pode-evoluir)
- [Autor](#-autor)

---

# 🏗️ Arquitetura do Projeto

O projeto foi organizado seguindo um fluxo de trabalho semelhante ao utilizado em projetos reais de análise de dados:

```text
Dados brutos
      ↓
Preparação e limpeza
      ↓
Modelagem e consultas
      ↓
Criação de indicadores
      ↓
Análise exploratória (EDA)
      ↓
Visualização
      ↓
Storytelling com dados
      ↓
Relatório analítico
```

---

# 📚 Módulo 01 — Fundamentos de Analytics

O primeiro módulo apresenta as etapas iniciais do processo analítico, trabalhando desde a exploração dos dados até sua preparação para análises mais avançadas.

---

# Unidade 01 — Excel: Fundamentos

Aplicação dos fundamentos de Excel utilizando a base de acidentes da PRF.

## Conteúdos trabalhados

- operações matemáticas;
- referências absolutas;
- funções estatísticas;
- tratamento inicial dos dados;
- remoção de duplicidades;
- funções:

  - CONT;
  - CONT.SE;
  - CONT.SES;
  - SOMA;
  - SOMA.SE;
  - SOMA.SES;
  - MÉDIA;
  - MÉDIA.SE;

- moda;
- mediana;
- quartis;
- PROCV;
- gráficos;
- tabelas dinâmicas.

## Competências desenvolvidas

- Excel aplicado à análise de dados;
- análise descritiva;
- organização de informações;
- construção inicial de indicadores.

---

# Unidade 02 — Excel: Análise e Visualização

Transformação dos dados em informações analíticas utilizando recursos de cálculo e visualização.

## Atividades realizadas

- criação de indicadores;
- análise por UF;
- análise por rodovia;
- análise por município;
- análise por causa;
- análise por tipo de acidente;
- análise de acidentes fatais;
- criação de gráficos;
- interpretação dos resultados.

## Competências desenvolvidas

- Excel avançado;
- construção de métricas;
- análise exploratória;
- visualização de dados.

---

# Unidade 03 — SQL com SQLite

Aplicação de SQL para consultas estruturadas e geração de indicadores.

## Análises realizadas

- acidentes por UF;
- acidentes por BR;
- causas dos acidentes;
- tipos de acidentes;
- condições meteorológicas;
- fase do dia;
- tipo de pista;
- cruzamento entre variáveis;
- criação de consultas analíticas.

## Competências desenvolvidas

- SQL;
- consultas analíticas;
- agregações;
- filtros;
- criação de indicadores;
- organização de consultas utilizando Views.

---

# Unidade 04 — Python: Preparação dos Dados

Preparação dos dados utilizando Python, Pandas e Jupyter Notebook.

## Etapas realizadas

- carregamento dos dados;
- análise da estrutura da base;
- identificação de inconsistências;
- tratamento de valores;
- transformação de variáveis;
- preparação da base analítica.

## Competências desenvolvidas

- Python;
- Pandas;
- Data Cleaning;
- transformação de dados;
- preparação de datasets.

---

# 📊 Módulo 02 — Data Analytics e EDA

Este módulo concentra a etapa analítica do projeto, utilizando os dados preparados para geração de insights.

---

# Unidade 05 — Analytics PRF

Aplicação de técnicas de:

- Data Analytics;
- Exploratory Data Analysis (EDA);
- análise de indicadores;
- storytelling com dados.

## Análises desenvolvidas

- definição do problema analítico;
- construção de KPIs;
- análise de acidentes fatais;
- ranking de categorias;
- análise temporal;
- análise geográfica;
- cruzamento de variáveis;
- identificação de padrões;
- apresentação executiva.

---

# 💡 Principais Insights

> Os valores abaixo devem ser preenchidos com os resultados finais da análise.

## 1. Distribuição geográfica

A UF com maior concentração de acidentes apresentou:

- **[valor] acidentes**
- aproximadamente **[XX%] do total analisado**

Entretanto, maior volume de acidentes não representa necessariamente maior gravidade.

---

## 2. Volume x severidade

O tipo de acidente **[tipo]** apresentou maior quantidade absoluta:

- **[valor] ocorrências**

Por outro lado, o tipo **[tipo]** apresentou maior proporção de acidentes fatais:

- **[XX%]**

Demonstrando a importância de analisar frequência e severidade separadamente.

---

## 3. Principais causas associadas à fatalidade

A causa **[causa]** apresentou:

- **[valor] acidentes**
- **[XX%] de acidentes fatais**

Indicando maior associação com ocorrências graves.

---

## 4. Períodos críticos

O período **[fase do dia]** apresentou:

- **[valor] acidentes**
- **[XX%] de acidentes fatais**

---

# 📄 Relatório Analítico EDA

O relatório completo da análise está disponível em:

```
modulo-02-data-analytics-eda/
└── unidade-05-analytics-prf/
    └── relatorios/
        └── Relatorio_Analitico_EDA_PRF_2025.docx
```

O documento apresenta:

- sumário executivo;
- indicadores gerais;
- análises dimensionais;
- gráficos;
- cruzamentos;
- hipóteses analíticas;
- limitações;
- recomendações futuras.

---

# 🖼️ Gráficos e Visualizações

Os gráficos utilizados na análise estão disponíveis em:

```
modulo-02-data-analytics-eda/
└── unidade-05-analytics-prf/
    └── graficos/
```

Incluindo análises:

- taxa de fatalidade por UF;
- tipo de acidente;
- causas;
- fase do dia;
- cruzamentos meteorológicos;
- dia da semana;
- rodovias;
- municípios.

---

# 🛠️ Tecnologias Utilizadas

| Tecnologia | Aplicação |
|-|-|
| Excel | Exploração inicial e indicadores |
| SQL | Consultas analíticas |
| SQLite | Banco local para análise |
| Python | Tratamento e análise |
| Pandas | Manipulação de dados |
| Jupyter Notebook | Desenvolvimento analítico |
| Matplotlib | Visualização |
| Git/GitHub | Versionamento |

---

# 📁 Estrutura do Repositório

```text
analise-dados-prf-2025/

│
├── dados/
│
├── modulo-01-fundamentos-analytics/
│   │
│   ├── unidade-01-excel-fundamentos/
│   ├── unidade-02-excel-analise-visualizacao/
│   ├── unidade-03-sql-sqlite/
│   └── unidade-04-python-preparacao-dados/
│
├── modulo-02-data-analytics-eda/
│   │
│   └── unidade-05-analytics-prf/
│       │
│       ├── notebooks/
│       ├── graficos/
│       ├── apresentacao/
│       └── relatorios/
│
├── README.md
└── requirements.txt
```

---

# ⚙️ Como Reproduzir a Análise

## 1. Clonar o projeto

```bash
git clone https://github.com/JJeffersonAraujo/analise-dados-prf-2025.git
```

Acesse a pasta:

```bash
cd analise-dados-prf-2025
```

---

## 2. Criar ambiente virtual

```bash
python -m venv .venv
```

Ativar:

Windows:

```bash
.venv\Scripts\activate
```

Linux/macOS:

```bash
source .venv/bin/activate
```

---

## 3. Instalar dependências

```bash
pip install -r requirements.txt
```

---

## 4. Executar notebooks

```bash
jupyter notebook
```

Executar os notebooks seguindo a ordem dos módulos.

---

# 📦 Requirements

Exemplo:

```txt
pandas
numpy
matplotlib
jupyter
openpyxl
```

---

# 🧠 Habilidades Demonstradas Neste Projeto

| Área | Competências |
|-|-|
| Excel | Fórmulas, indicadores, tabelas dinâmicas |
| SQL | Consultas, agregações, Views |
| Python | Manipulação e preparação de dados |
| Pandas | Data Cleaning e transformação |
| EDA | Exploração e interpretação de padrões |
| Analytics | Construção de KPIs |
| Visualização | Comunicação visual dos dados |
| Storytelling | Transformação de dados em narrativa |
| GitHub | Organização e documentação de projeto |

---

# 🚀 Como Este Projeto Pode Evoluir

## Dashboard interativo

Construção de uma aplicação utilizando:

- Power BI;
- Streamlit;
- Tableau;
- Looker Studio.

---

## Pipeline automatizado

Automatização do processo:

```text
Coleta
 ↓
Tratamento
 ↓
Análise
 ↓
Indicadores
 ↓
Visualização
```

---

## Modelos analíticos avançados

Possíveis evoluções:

- previsão de risco;
- classificação de severidade;
- análise histórica;
- modelos de Machine Learning.

---

# 👤 Autor

## Jefferson Araújo

Projeto desenvolvido para demonstrar competências práticas em:

- Análise de Dados;
- Python;
- SQL;
- Excel;
- Visualização;
- Comunicação analítica.

GitHub:

https://github.com/JJeffersonAraujo