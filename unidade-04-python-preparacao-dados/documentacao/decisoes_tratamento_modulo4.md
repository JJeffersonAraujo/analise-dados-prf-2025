
# Decisões de tratamento — Módulo 4

Data de geração: 2026-08-08 19:18

## Principais decisões

- Nomes de colunas padronizados para minúsculas, sem acentos e com underline.
- Colunas numéricas convertidas com `pd.to_numeric(errors='coerce')`.
- Datas convertidas com `pd.to_datetime(errors='coerce')`.
- Textos padronizados em letras maiúsculas e sem espaços externos.
- Categorias ausentes relevantes preenchidas como `IGNORADO`.
- Valores ausentes em campos de contagem preenchidos com zero conforme hipótese operacional do roteiro.
- Variável-alvo: `acidente_fatal = 1` quando `mortos >= 1`.
- Criados indicadores de gravidade para análise e dashboard.
- Base modelável exclui variáveis diretamente relacionadas ou derivadas do desfecho.
- Nulos numéricos remanescentes na base modelável foram preenchidos com `-1`.
- O arquivo bruto original não foi sobrescrito.

## Arquivos gerados

- dados_tratados\base_analitica_prf_2025.csv
- dados_tratados\base_modelavel_prf_2025.csv
- dados_tratados\dicionario_variaveis_modulo4.csv
