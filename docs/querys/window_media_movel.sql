SELECT
  *,
  LAG(quantidade_teorica) OVER (PARTITION BY codigo_bovespa ORDER BY data_pregao) AS quantidade_teorica_anterior,
  LAG(percentual_participacao_acao) OVER (PARTITION BY codigo_bovespa ORDER BY data_pregao) AS percentual_participacao_acao_anterior,
  quantidade_teorica - LAG(quantidade_teorica) OVER (PARTITION BY codigo_bovespa ORDER BY data_pregao) AS variacao_quantidade_teorica,
  percentual_participacao_acao - LAG(percentual_participacao_acao) OVER (PARTITION BY codigo_bovespa ORDER BY data_pregao) AS variacao_percentual_participacao_acao_anterior,
  date_diff(
    'day',
    LAG(data_pregao) OVER (PARTITION BY codigo_bovespa ORDER BY data_pregao),
    data_pregao
  ) AS intervalo
FROM b3_acao_pregao