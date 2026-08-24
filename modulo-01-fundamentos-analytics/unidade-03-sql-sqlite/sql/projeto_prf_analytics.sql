/*
 PROJETO - DATA ANALYTICS COM SQLITE
 Base: Dados Abertos PRF 2025
 Autor: Jefferson Araujo
*/



-- 1. Verificar versão do SQLite


SELECT sqlite_version();


-- 2. Estrutura da tabela


PRAGMA table_info(acidentes_prf_2025);



-- 3. Total de registros


SELECT
COUNT(*) AS total_registros
FROM acidentes_prf_2025;



-- 4. Excluir View Base caso exista


DROP VIEW IF EXISTS vw_base;



-- 5. Criar View Base


CREATE VIEW vw_base AS

SELECT

*,

CASE

WHEN mortos >= 1 THEN 1

ELSE 0

END AS acidente_fatal

FROM acidentes_prf_2025;



-- 6. Indicadores Gerais


SELECT

COUNT(*) AS total_acidentes,

SUM(acidente_fatal) AS acidentes_fatais,

ROUND(
100.0 * SUM(acidente_fatal) / COUNT(*),
2
) AS percentual_letalidade

FROM vw_base;



-- 7. Indicadores por UF


SELECT

uf,

COUNT(*) AS acidentes,

SUM(mortos) AS mortos,

SUM(acidente_fatal) AS acidentes_fatais,

ROUND(
100.0 * SUM(acidente_fatal) / COUNT(*),
2
) AS percentual_fatais

FROM vw_base

GROUP BY uf

HAVING COUNT(*) >= 100

ORDER BY percentual_fatais DESC;



-- 8. As 30 BRs com maior número de mortes


SELECT

br,

SUM(mortos) AS total_mortos,

COUNT(*) AS acidentes

FROM vw_base

GROUP BY br

ORDER BY total_mortos DESC

LIMIT 30;



-- 9. Evolução temporal


SELECT

strftime('%Y', data_inversa) AS ano,

strftime('%m', data_inversa) AS mes,

COUNT(*) AS acidentes,

SUM(mortos) AS mortos

FROM vw_base

GROUP BY ano, mes

ORDER BY ano, mes;



-- 10. Tipo de acidente x Fatalidade


SELECT

tipo_acidente,

COUNT(*) AS acidentes,

SUM(acidente_fatal) AS fatais,

ROUND(

100.0 * SUM(acidente_fatal)/COUNT(*),

2

) AS percentual_fatais

FROM vw_base

GROUP BY tipo_acidente

ORDER BY percentual_fatais DESC;



-- 11. 30 causas com maior percentual de acidentes fatais


SELECT

causa_acidente,

COUNT(*) AS acidentes,

SUM(acidente_fatal) AS fatais,

SUM(mortos) AS mortos,

ROUND(

100.0 * SUM(acidente_fatal)/COUNT(*),

2

) AS taxa_letalidade

FROM vw_base

GROUP BY causa_acidente

ORDER BY taxa_letalidade DESC

LIMIT 30;



-- 12. Fase do Dia


SELECT

fase_dia,

COUNT(*) AS acidentes,

SUM(acidente_fatal) AS fatais,

SUM(mortos) AS mortos,

ROUND(

100.0 * SUM(acidente_fatal)/COUNT(*),

2

) AS percentual_fatais

FROM vw_base

GROUP BY fase_dia

ORDER BY percentual_fatais DESC;



-- 13. Condição Meteorológica


SELECT

condicao_metereo,

COUNT(*) AS acidentes,

SUM(acidente_fatal) AS fatais,

SUM(mortos) AS mortos,

ROUND(

100.0 * SUM(acidente_fatal)/COUNT(*),

2

) AS percentual_fatais

FROM vw_base

GROUP BY condicao_metereo

ORDER BY percentual_fatais DESC;



-- 14. Tipo de Pista


SELECT

tipo_pista,

COUNT(*) AS acidentes,

SUM(acidente_fatal) AS fatais,

ROUND(

100.0 * SUM(acidente_fatal)/COUNT(*),

2

) AS percentual_fatais

FROM vw_base

GROUP BY tipo_pista

ORDER BY percentual_fatais DESC;



-- 15. Tipo de pista + Fase do dia


SELECT

tipo_pista,

fase_dia,

COUNT(*) AS acidentes,

SUM(acidente_fatal) AS fatais,

ROUND(

100.0 * COUNT(*) /

(SELECT COUNT(*) FROM vw_base),

2

) AS cobertura_percentual,

ROUND(

100.0 * SUM(acidente_fatal)/COUNT(*),

2

) AS percentual_fatais

FROM vw_base

GROUP BY

tipo_pista,

fase_dia

ORDER BY acidentes DESC;



-- 16. Lift da letalidade


WITH media AS

(

SELECT

AVG(acidente_fatal) AS taxa_media

FROM vw_base

)

SELECT

tipo_acidente,

COUNT(*) AS acidentes,

AVG(acidente_fatal) AS taxa,

ROUND(

AVG(acidente_fatal) /

(SELECT taxa_media FROM media),

2

) AS lift

FROM vw_base

GROUP BY tipo_acidente

ORDER BY lift DESC;



-- 17. View Mensal


DROP VIEW IF EXISTS vw_indicadores_mensais;

CREATE VIEW vw_indicadores_mensais AS

SELECT

strftime('%Y', data_inversa) AS ano,

strftime('%m', data_inversa) AS mes,

COUNT(*) AS acidentes,

SUM(mortos) AS mortos,

SUM(acidente_fatal) AS fatais,

ROUND(

100.0 * SUM(acidente_fatal)/COUNT(*),

2

) AS percentual_fatais

FROM vw_base

GROUP BY ano, mes;



-- 18. View UF + BR


DROP VIEW IF EXISTS vw_indicadores_uf_br;

CREATE VIEW vw_indicadores_uf_br AS

SELECT

uf,

br,

COUNT(*) AS acidentes,

SUM(mortos) AS mortos,

SUM(acidente_fatal) AS fatais,

ROUND(

100.0 * SUM(acidente_fatal)/COUNT(*),

2

) AS percentual_fatais

FROM vw_base

GROUP BY

uf,
vw_base
br;
