SELECT
  *,
  AVG(quantidade_teorica) OVER (
    PARTITION BY codigo_bovespa
    ORDER BY data_pregao
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
  ) AS media_movel_quantidade_teorica
FROM b3_acao_pregao