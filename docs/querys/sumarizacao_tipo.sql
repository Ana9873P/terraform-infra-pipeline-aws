SELECT
  data_pregao,
  nome_tipo_acao,
  SUM(quantidade_teorica) AS total_quantidade_teorica,
  AVG(quantidade_teorica) AS media_quantidade_teorica,
  SUM(percentual_participacao_acao) AS total_percentual_participacao_acao,
  AVG(percentual_participacao_acao) AS media_percentual_participacao_acao,
  substring(CAST(data_pregao AS varchar), 1, 4) AS ano,
  substring(CAST(data_pregao AS varchar), 6, 2) AS mes,
  substring(CAST(data_pregao AS varchar), 9, 2) AS ano
FROM b3_acao_pregao
GROUP BY nome_tipo_acao, data_pregao