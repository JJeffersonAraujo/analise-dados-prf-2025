# 📄 Relatórios Analíticos — EDA PRF 2025

Esta pasta contém os relatórios analíticos desenvolvidos durante a etapa de **Exploratory Data Analysis (EDA)** do projeto **Análise de Dados de Acidentes da PRF 2025**.

Os documentos apresentados aqui consolidam os resultados obtidos durante as etapas de exploração dos dados, criação de indicadores, cruzamento de variáveis e interpretação dos principais padrões identificados na base de acidentes da **Polícia Rodoviária Federal (PRF)**.

---

# 🎯 Objetivo

O objetivo desta etapa é transformar os resultados técnicos da análise de dados em uma documentação analítica estruturada, permitindo uma visão clara dos fatores associados aos acidentes rodoviários.

Os relatórios apresentam:

- indicadores gerais dos acidentes;
- análise de acidentes fatais;
- distribuição das ocorrências por localização;
- identificação dos principais tipos e causas de acidentes;
- análise temporal das ocorrências;
- cruzamento entre variáveis;
- identificação de padrões relevantes;
- interpretação dos resultados;
- hipóteses analíticas;
- limitações encontradas durante a análise.

---

# 📑 Arquivos disponíveis

## Relatório Analítico EDA — PRF 2025

📄 Arquivo:

```
Relatorio_Analitico_EDA_PRF_2025.docx
```

---

## Conteúdo do relatório

O relatório contempla as seguintes análises:

### 1. Sumário Executivo

Apresentação dos principais resultados encontrados durante a análise exploratória.

---

### 2. Indicadores Gerais (KPIs)

Apresentação dos indicadores consolidados da base:

- quantidade total de acidentes;
- acidentes fatais;
- quantidade de mortos;
- quantidade de feridos;
- total de vítimas;
- percentual de acidentes fatais;
- taxa de letalidade operacional.

---

### 3. Análises Dimensionais

Avaliação dos acidentes considerando diferentes perspectivas:

### Localização

- Unidade Federativa (UF);
- rodovias federais;
- municípios.

### Características do acidente

- tipo de acidente;
- causa do acidente;
- classificação da ocorrência.

### Condições da ocorrência

- fase do dia;
- condição meteorológica;
- dia da semana;
- sentido da via.

---

### 4. Análise de Acidentes Fatais

A análise utiliza como indicador principal:

```
Percentual de acidentes fatais =
(acidentes fatais / total de acidentes) × 100
```

Essa abordagem permite comparar categorias considerando proporcionalidade, evitando conclusões baseadas apenas em volume absoluto.

---

### 5. Cruzamento de Variáveis

Foram realizados cruzamentos para identificação de padrões, incluindo:

- fase do dia × condição meteorológica;
- características da via × gravidade;
- fatores associados aos acidentes fatais.

---

### 6. Insights Analíticos

O relatório busca responder perguntas como:

- Onde ocorrem os acidentes mais graves?
- Quais causas apresentam maior proporção de fatalidade?
- Quais períodos possuem maior risco relativo?
- Quais características aparecem associadas aos acidentes fatais?

---

# 📊 Relação com os demais artefatos do projeto

O relatório consolida informações produzidas nas demais etapas do módulo:

| Pasta | Objetivo |
|---|---|
| `notebooks/` | Processamento, validação e análise exploratória utilizando Python/Pandas |
| `graficos/` | Gráficos utilizados para interpretação dos resultados |
| `apresentacao/` | Comunicação executiva dos principais resultados |
| `relatorios/` | Documentação analítica detalhada da EDA |

---

# 🔎 Fluxo Analítico

O desenvolvimento do relatório segue o fluxo:

```text
Dados brutos PRF 2025
          ↓
Tratamento e preparação dos dados
          ↓
Criação dos indicadores
          ↓
Análise exploratória (EDA)
          ↓
Cruzamento de variáveis
          ↓
Identificação de padrões
          ↓
Relatório Analítico
```

---

# 🛠️ Tecnologias utilizadas

| Tecnologia | Aplicação |
|---|---|
| Python | Processamento e análise dos dados |
| Pandas | Manipulação e transformação dos dados |
| Jupyter Notebook | Desenvolvimento e validação das análises |
| Excel | Apoio na análise e construção de indicadores |
| SQLite / SQL | Consultas e exploração estruturada |
| Matplotlib | Construção das visualizações |
| Microsoft Word | Documentação do relatório |
| Git/GitHub | Versionamento e organização do projeto |

---

# 📌 Critérios de interpretação

As análises apresentadas utilizam principalmente:

- volume absoluto de ocorrências;
- proporção de acidentes fatais;
- distribuição percentual;
- comparação entre categorias.

É importante destacar que os resultados representam **associações encontradas nos dados**, não estabelecendo necessariamente relação de causa e efeito entre os fatores analisados.

---

# 🚀 Possíveis evoluções

Este relatório pode evoluir para novas aplicações analíticas:

## Dashboard interativo

Construção de uma camada visual utilizando ferramentas como:

- Power BI;
- Tableau;
- Streamlit;
- Looker Studio.

Possibilitando filtros por:

- UF;
- BR;
- período;
- causa;
- tipo de acidente;
- gravidade.

---

## Automação do pipeline

Evolução para um fluxo automatizado:

```text
Coleta dos dados
        ↓
Tratamento automático
        ↓
Atualização dos indicadores
        ↓
Geração dos gráficos
        ↓
Publicação dos resultados
```

---

## Modelos analíticos avançados

Possíveis aplicações futuras:

- modelos preditivos de risco;
- classificação de severidade;
- análise de tendências históricas;
- comparação entre diferentes anos.

---

# 📁 Estrutura da pasta

```text
relatorios/
│
├── README.md
│
└── Relatorio_Analitico_EDA_PRF_2025.docx
```

---

# 👤 Autor

**Jefferson Araújo**

Projeto desenvolvido como parte da formação prática em **Análise de Dados**, aplicando técnicas de:

- preparação de dados;
- análise exploratória;
- criação de indicadores;
- visualização;
- interpretação de informações;
- comunicação analítica.

---

🔗 GitHub:

https://github.com/JJeffersonAraujo