# Unidade 01 — Fundamentos de Excel

Esta unidade reúne atividades práticas de levantamento de hipóteses, compreensão do problema, classificação de variáveis, refinamento de perguntas analíticas e fundamentos de manipulação e análise de dados utilizando **Microsoft Excel**, aplicadas ao projeto de análise dos acidentes registrados pela **Polícia Rodoviária Federal (PRF) em 2025**.

As atividades foram desenvolvidas a partir do conjunto de dados disponibilizado durante o módulo de Análise de Dados.

---

## 🎯 Objetivo

Desenvolver fundamentos de análise de dados por meio da definição do problema, levantamento de hipóteses, classificação de variáveis, refinamento de perguntas analíticas, tratamento e exploração de dados, aplicação de funções estatísticas e construção de visualizações utilizando o Excel.

---

## 📊 Atividades Desenvolvidas

### 1. Hipóteses iniciais sobre acidentes fatais

Nesta atividade foram levantadas hipóteses iniciais sobre possíveis fatores relacionados à ocorrência e à gravidade dos acidentes fatais.

Foram consideradas relações envolvendo:

- Fase e horário do acidente;
- Tipo de acidente;
- Unidade federativa;
- Características da rodovia;
- Causas presumíveis e fatores comportamentais;
- Envolvimento de motocicletas.

As hipóteses serão utilizadas como ponto de partida para as etapas posteriores de análise exploratória dos dados (EDA), nas quais poderão ser confirmadas, rejeitadas ou ajustadas com base nos resultados encontrados.

**Arquivo da atividade:**

`Atividade_01_Hipoteses_Iniciais_Acidentes_Fatais_PRF_2025.pdf`

---

### 2. Do Dado à Decisão

Nesta atividade foi trabalhada a transformação de um registro de acidente em uma sequência lógica de análise:

**Dado → Informação → Insight possível → Decisão possível**

A situação analisada considera um acidente com:

- **2 mortos**;
- **Plena Noite**;
- **Colisão frontal**;
- **Pista Simples**.

A atividade reforça a necessidade de evitar conclusões causais a partir de um único registro.

**Arquivo da atividade:**

`Atividade_02_Do_Dado_a_Decisao_PRF_2025.pdf`

---

### 3. Classificação Inicial das Variáveis

Nesta atividade foi realizada a classificação inicial das variáveis da base da PRF 2025 conforme sua função analítica.

As variáveis foram organizadas em quatro grupos:

- **Temporais:** `data_inversa`, `horario`, `dia_semana`;
- **Geográficas:** `uf`, `br`, `municipio`, `km`;
- **Explicativas do acidente:** `causa_acidente`, `tipo_acidente`, `fase_dia`, `tipo_pista`;
- **Gravidade / Desfecho:** `mortos`, `feridos`, `pessoas`.

As variáveis de gravidade/desfecho representam consequências observadas do acidente e, portanto, não devem ser utilizadas como variáveis explicativas.

**Arquivo da atividade:**

`Atividade_03_Classificacao_Inicial_Variaveis_PRF_2025.pdf`

---

### 4. Mapa CRISP-DM do Projeto

Nesta atividade foi relacionado o ciclo **CRISP-DM** às ações previstas no projeto da PRF 2025:

- Compreensão do negócio;
- Compreensão dos dados;
- Preparação dos dados;
- Modelagem;
- Avaliação;
- Comunicação.

O objetivo é conectar cada fase às ações e aos produtos do projeto, mantendo a análise alinhada ao problema central.

**Arquivo da atividade:**

`Atividade_04_Mapa_CRISP_DM_Projeto_PRF_2025.pdf`

---

### 5. Refinamento de Perguntas Analíticas

Nesta atividade foram transformadas perguntas amplas em perguntas específicas e mensuráveis, organizadas pelos eixos:

- UF e BR;
- Mês e horário;
- Tipo de acidente;
- Causa registrada;
- Condição meteorológica;
- Tipo de pista;
- Fase do dia.

As perguntas servirão como orientação para tabelas, consultas, gráficos e análises posteriores.

**Arquivo da atividade:**

`Atividade_05_Refinamento_Perguntas_Analiticas_PRF_2025.pdf`

---

### Fundamentos de Excel

Além das atividades de planejamento e raciocínio analítico, a unidade trabalha operações e funções fundamentais do Excel.

#### Operações e tratamento dos dados

- Adição;
- Subtração;
- Multiplicação;
- Divisão;
- Referências absolutas e travamento de células;
- Identificação de valores máximos;
- Identificação de valores mínimos;
- Remoção de registros duplicados.

#### Funções de análise

**Contagem**
- CONT;
- CONT.SE;
- CONT.SES.

**Soma**
- SOMA;
- SOMA.SE;
- SOMA.SES.

**Estatística**
- MÉDIA;
- MÉDIA.SE;
- MODA;
- MEDIANA;
- QUARTIL.

**Pesquisa**
- PROCV.

#### Visualização e Tabela Dinâmica

Foram trabalhados gráficos para representação dos dados e Tabelas Dinâmicas para resumir e explorar as informações de maneira interativa.

---

## 🛠️ Ferramentas

- Microsoft Excel;
- Dados em formato CSV;
- GitHub para documentação e versionamento do projeto.

---

## 📁 Arquivos

```text
unidade-01-excel-fundamentos/
│
├── README.md
├── Atividade_01_Hipoteses_Iniciais_Acidentes_Fatais_PRF_2025.pdf
├── Atividade_02_Do_Dado_a_Decisao_PRF_2025.pdf
├── Atividade_03_Classificacao_Inicial_Variaveis_PRF_2025.pdf
├── Atividade_04_Mapa_CRISP_DM_Projeto_PRF_2025.pdf
├── Atividade_05_Refinamento_Perguntas_Analiticas_PRF_2025.pdf
└── atividade-excel-fundamentos.xlsx
```

---

## 🔎 Relação com as próximas etapas

As atividades desta unidade estabelecem a base conceitual para as etapas posteriores do projeto.

O fluxo parte do **problema**, passa por **hipóteses e perguntas analíticas**, organiza as **variáveis** e define uma estrutura de trabalho baseada no **CRISP-DM**. A análise dos dados será utilizada posteriormente para verificar os padrões encontrados, evitando que as conclusões sejam baseadas apenas em observações posteriores aos resultados.
