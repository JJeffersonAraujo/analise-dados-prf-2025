# Unidade 04 — Python para Preparação dos Dados

Esta unidade apresenta a preparação, transformação e validação dos dados de acidentes rodoviários registrados pela Polícia Rodoviária Federal (PRF) em 2025, utilizando Python, Pandas e Jupyter Notebook.

O objetivo foi transformar a base original em conjuntos de dados preparados para análise exploratória, visualização e futuras etapas de modelagem.

## 🎯 Objetivo

Aplicar técnicas de preparação de dados utilizando Python para:

carregar e validar o conjunto de dados;

analisar a estrutura inicial da base;

padronizar nomes de colunas;

verificar valores ausentes;

identificar registros duplicados;

converter tipos de dados;

padronizar informações textuais;

criar variáveis temporais;

realizar engenharia de atributos;

definir uma variável-alvo;

gerar uma base analítica;

gerar uma base destinada à modelagem;

prevenir data leakage;

exportar e validar os arquivos processados.

## 🛠️ Tecnologias Utilizadas

Python

Pandas

NumPy

Matplotlib

Jupyter Notebook

VS Code

Git

GitHub

## 📂 Dataset

O conjunto de dados original utilizado nesta atividade está centralizado na pasta:

../dados

Arquivo utilizado:

dados_abertos_prf-datatran2025.csv

A centralização do dataset evita a duplicação do arquivo entre as diferentes unidades do projeto e mantém uma única fonte de dados original.

## 🔎 Diagnóstico Inicial

A base original utilizada no notebook possui:

72.529 registros
30 colunas

Durante a etapa inicial foram realizadas verificações de:

dimensões da base;

nomes das colunas;

tipos de dados;

consumo de memória;

valores ausentes;

cardinalidade das variáveis categóricas;

presença das colunas necessárias;

registros duplicados.

# Duplicidades

Não foram identificadas duplicidades exatas na base.

Duplicidades exatas: 0

Portanto, nenhum registro precisou ser removido nessa etapa.

## 🧹 Tratamento dos Dados

O processo de preparação incluiu diferentes etapas de limpeza e padronização.

# Padronização dos nomes das colunas

Os nomes das colunas foram transformados para um padrão consistente:

letras minúsculas;

remoção de acentos;

substituição de espaços por _;

substituição de hífens e barras;

remoção de caracteres desnecessários.

Exemplo:

Nome da Coluna

passa a seguir um padrão semelhante a:

nome_da_coluna

## 🔢 Conversão de Tipos

Colunas numéricas foram convertidas utilizando:

pd.to_numeric(errors="coerce")

Entre as variáveis tratadas estão:

br
km
pessoas
mortos
feridos
feridos_leves
feridos_graves
ilesos
ignorados
veiculos

A coluna de data também foi convertida para o tipo apropriado utilizando:

pd.to_datetime()

## 🧽 Padronização de Textos

As variáveis textuais foram padronizadas para:

remoção de espaços externos;

utilização de letras maiúsculas;

tratamento de valores vazios;

normalização de valores equivalentes a nulos.

Valores como:

""
"NAN"
"NONE"
"NULL"

foram convertidos para valores ausentes antes da etapa de tratamento.

## ❓ Tratamento de Valores Ausentes

Variáveis categóricas relevantes foram preenchidas com:

IGNORADO

Essa estratégia foi utilizada para evitar a exclusão desnecessária de registros.

Entre as variáveis categóricas tratadas estão:

uf
municipio
causa_acidente
tipo_acidente
fase_dia
condicao_metereologica
tipo_pista
tracado_via
uso_solo
classificacao_acidente
dia_semana

Campos numéricos relacionados a contagens foram preenchidos com 0, conforme a regra de tratamento adotada no projeto.

## 🧠 Engenharia de Atributos

Foram criadas novas variáveis para ampliar as possibilidades de análise e preparar os dados para etapas posteriores.

## 📅 Variáveis Temporais

A partir da coluna de data foram criadas:

ano
mes
trimestre
dia_semana_num
fim_de_semana

# fim_de_semana

A variável identifica sábados e domingos:

1 = sábado ou domingo
0 = demais dias

## 🕐 Tratamento do Horário

A partir da coluna horario foi extraída a variável:

hora

Também foram criadas duas novas classificações temporais:

turno
faixa_horaria

# Turnos

Os horários foram agrupados em:

MADRUGADA
MANHA
TARDE
NOITE

A classificação utilizada foi:

00h até 05h → MADRUGADA
06h até 11h → MANHA
12h até 17h → TARDE
18h até 23h → NOITE

## ⏱️ Faixas Horárias

Os horários também foram agrupados em intervalos de três horas:

00H-02H
03H-05H
06H-08H
09H-11H
12H-14H
15H-17H
18H-20H
21H-23H

Essa transformação facilita análises relacionadas ao período de ocorrência dos acidentes.

## 🚨 Variável-alvo

Foi criada a variável:

acidente_fatal

A regra utilizada foi:

acidente_fatal = 1 quando mortos >= 1
acidente_fatal = 0 quando mortos = 0

A criação da variável foi validada automaticamente no notebook.

# Resultado

Foram identificados:

5.210 acidentes fatais
67.319 acidentes não fatais

Percentual aproximado de acidentes fatais:

7,18%

O notebook também verifica automaticamente se existem violações da regra utilizada para criar a variável.

Resultado:

Violações da regra: 0

## 📊 Indicadores Criados

Além da variável-alvo, foram criados outros atributos para apoiar análises posteriores.

# total_vitimas

Representa a soma de:

mortos
+ feridos_leves
+ feridos_graves

Fórmula:

total_vitimas =
mortos + feridos_leves + feridos_graves

# acidente_grave

Identifica ocorrências que apresentaram:

pelo menos uma morte; ou

pelo menos um ferido grave.

Regra:

1 = acidente grave
0 = demais ocorrências

# indice_gravidade

Foi criado um indicador baseado na quantidade e gravidade das vítimas.

Fórmula:

indice_gravidade =
mortos * 3
+ feridos_graves * 2
+ feridos_leves

O indicador é utilizado exclusivamente para análise e não faz parte da base destinada à modelagem.

# br_formatada

A identificação das rodovias foi padronizada para o formato:

BR-000

Exemplos:

BR-101
BR-116
BR-232
BR-369

# chave_localidade

Foi criada uma chave combinando:

UF + município + BR

Exemplo:

SP_GUARULHOS_BR-116

Essa variável facilita agrupamentos e identificação de localidades específicas.

## 📊 Análises Exploratórias

O notebook também realiza algumas análises preliminares dos dados.

Entre elas:

ranking das principais causas dos acidentes;

ranking dos tipos de acidente;

distribuição da variável acidente_fatal;

taxa de acidentes fatais por tipo de acidente;

análise da cardinalidade das variáveis;

distribuição dos acidentes por turno;

distribuição por faixa horária.

Essas análises ajudam a validar os dados preparados e identificar padrões iniciais.

## 📈 Base Analítica

Foi criada uma base completa destinada à análise exploratória e visualização:

dados_tratados/base_analitica_prf_2025.csv

Dimensões finais:

72.529 linhas
44 colunas

A base analítica mantém:

dados originais tratados;

variáveis temporais;

indicadores de gravidade;

variável-alvo;

atributos derivados.

Essa base pode ser utilizada em análises exploratórias e ferramentas de visualização.

## 🤖 Base Modelável

Também foi criada uma segunda base específica para futuras etapas de modelagem:

dados_tratados/base_modelavel_prf_2025.csv

Dimensões:

72.529 linhas
19 colunas

A base contém variáveis explicativas e a variável-alvo:

acidente_fatal

Entre as variáveis presentes estão:

uf
br_formatada
municipio
mes
trimestre
dia_semana
dia_semana_num
fim_de_semana
hora
faixa_horaria
turno
fase_dia
causa_acidente
tipo_acidente
condicao_metereologica
tipo_pista
tracado_via
uso_solo
acidente_fatal

## ⚠️ Prevenção de Data Leakage

Um dos principais cuidados metodológicos da atividade foi evitar data leakage.

Como a variável acidente_fatal é definida diretamente a partir da quantidade de mortos, algumas variáveis não podem ser utilizadas como atributos explicativos em uma futura modelagem.

Foram excluídas da base modelável:

mortos
feridos
feridos_leves
feridos_graves
total_vitimas
indice_gravidade
acidente_grave
classificacao_acidente

Essas variáveis poderiam fornecer ao modelo informações diretamente relacionadas ao resultado que se deseja prever.

O notebook possui uma função específica para verificar automaticamente a presença dessas variáveis.

Resultado da validação:

OK — nenhuma variável proibida encontrada.

## ✅ Validações Realizadas

O notebook executa diferentes verificações para garantir a consistência do processo de preparação.

Entre elas:

validação das colunas esperadas;

verificação das dimensões da base;

análise dos tipos de dados;

análise de valores ausentes;

verificação de duplicidades;

validação da variável-alvo;

verificação dos valores possíveis do alvo;

validação das variáveis criadas;

validação das bases analítica e modelável;

verificação de data leakage;

verificação de valores ausentes na base modelável;

exportação das bases;

reabertura dos arquivos exportados;

comparação das dimensões após exportação;

validação das colunas após a gravação dos arquivos.

Ao final do processamento, a base modelável apresentou:

0 valores nulos

## 💾 Validação dos Arquivos Exportados

Após a exportação, os arquivos CSV são novamente carregados pelo notebook.

Essa etapa verifica se:

a quantidade de linhas foi preservada;

a quantidade de colunas foi preservada;

os nomes das colunas permaneceram corretos.

Resultado da validação:

OK — arquivos reabertos e quantidade de linhas validada.

OK — linhas e colunas preservadas após exportação.

## 📖 Dicionário de Variáveis

Foi criado um arquivo contendo a descrição das principais variáveis produzidas durante a preparação:

dados_tratados/dicionario_variaveis_modulo4.csv

O dicionário documenta:

nome da variável;

descrição;

finalidade;

indicação de variáveis que não devem ser utilizadas na modelagem.

## 📝 Decisões de Tratamento

As principais decisões metodológicas adotadas durante a preparação dos dados foram registradas em:

documentacao/decisoes_tratamento_modulo4.md

O documento registra decisões como:

padronização dos nomes das colunas;

conversão de tipos;

tratamento de valores ausentes;

padronização textual;

criação da variável-alvo;

criação das bases analítica e modelável;

prevenção de data leakage;

preservação do arquivo bruto original.

## 📁 Arquivos Gerados

# Base analítica

dados_tratados/base_analitica_prf_2025.csv

# Base modelável

dados_tratados/base_modelavel_prf_2025.csv

# Dicionário de variáveis

dados_tratados/dicionario_variaveis_modulo4.csv

# Decisões de tratamento

documentacao/decisoes_tratamento_modulo4.md

# Notebook

notebooks/modulo4_preparacao_dados.ipynb

## 📁 Estrutura da Unidade

unidade-04-python-preparacao-dados/
│
├── README.md
│
├── dados_tratados/
│   ├── base_analitica_prf_2025.csv
│   ├── base_modelavel_prf_2025.csv
│   └── dicionario_variaveis_modulo4.csv
│
├── documentacao/
│   └── decisoes_tratamento_modulo4.md
│
└── notebooks/
    └── modulo4_preparacao_dados.ipynb

## 📚 Principais Aprendizados

A atividade permitiu aplicar conceitos práticos relacionados à preparação e transformação de dados com Python, incluindo:

leitura de arquivos CSV;

manipulação de DataFrames;

análise da estrutura dos dados;

tratamento de valores ausentes;

verificação de duplicidades;

padronização de dados;

conversão de tipos;

análise de cardinalidade;

engenharia de atributos;

transformação de datas e horários;

criação de variáveis categóricas;

criação e validação de variável-alvo;

análise exploratória inicial;

geração de indicadores;

preparação de dados para modelagem;

prevenção de data leakage;

criação de bases com objetivos distintos;

exportação de conjuntos de dados;

validação dos arquivos gerados;

documentação das decisões de tratamento.

## 🔗 Navegação

Voltar para o README principal

Acessar o notebook

Acessar os dados tratados

Acessar as decisões de tratamento

## 👤 Autor

# Jefferson Araújo

Projeto desenvolvido como parte das atividades práticas de análise e preparação de dados utilizando informações públicas de acidentes registrados pela Polícia Rodoviária Federal em 2025.