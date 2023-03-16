
## Junção das Tabelas de Dados

SELECT  bens.id_candidato_bd, cands.nome, cands.sigla_partido,   SUM(valor_item) AS  bens_total

 FROM `basedosdados.br_tse_eleicoes.bens_candidato` AS  bens JOIN `basedosdados.br_tse_eleicoes.candidatos` AS cands
 ON  bens.id_candidato_bd = cands.id_candidato_bd


 
 WHERE bens.ano=2018 AND bens.sigla_uf='PR' AND cands.ano =2018 AND cands.cargo = 'governador'
 GROUP BY bens.id_candidato_bd, cands.nome, cands.cargo, cands.sigla_partido
 
 
 ORDER BY bens_total DESC;
 