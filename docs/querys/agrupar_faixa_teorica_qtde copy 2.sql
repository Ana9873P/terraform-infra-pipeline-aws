SELECT *,
  CASE
    WHEN quantidade_teorica > 5000000000 THEN 'Muito Alta'
    WHEN quantidade_teorica > 3000000000 THEN 'Alta'
    WHEN quantidade_teorica > 1000000000 THEN 'Média'
    ELSE 'Baixa'
  END AS classificcao_quantidade_teorica
FROM b3_acao_pregao