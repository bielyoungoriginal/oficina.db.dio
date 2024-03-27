SELECT*FROM mao_de_obra;

SELECT*FROM mao_de_obra WHERE servico_mecanicos_id = 1 OR 2;

SELECT*FROM veiculo ORDER BY modelo;

SELECT mo.data_entrega, mo.valor, m.nome FROM mao_de_obra AS mo
INNER JOIN servico_mecanicos AS sm ON mo.servico_mecanicos_id = sm.id
INNER JOIN mecanicos AS m ON sm.mecanicos_id = m.id
HAVING COUNT(nome) > 1;

SELECT s.nome_servico, v.modelo, v.placa FROM servico AS s
INNER JOIN servico_veiculo AS sv ON s.id = sv.servico_id
INNER JOIN veiculo AS v ON sv.veiculo_id = v.id;