
-- Pergunta: Quais são todos os clientes da oficina?
SELECT nome, email, telefone 
FROM Clientes;

-- Pergunta: Quais veículos são da marca Toyota?
SELECT placa, modelo, ano 
FROM Veiculos 
WHERE marca = 'Toyota';

-- Pergunta: Quanto cada cliente gastou em ordens de serviço, considerando apenas o preço dos serviços (sem peças)?
SELECT c.nome, SUM(s.preco) AS total_gasto
FROM Clientes c
JOIN Veiculos v ON c.cliente_id = v.cliente_id
JOIN OrdensDeServico o ON v.veiculo_id = o.veiculo_id
JOIN Servicos s ON o.servico_id = s.servico_id
GROUP BY c.cliente_id;

-- Pergunta: Quais são os serviços disponíveis ordenados pelo preço em ordem decrescente?
SELECT descricao, preco 
FROM Servicos 
ORDER BY preco DESC;

-- Pergunta: Quais clientes gastaram mais de 200 reais em serviços?
SELECT c.nome, SUM(s.preco) AS total_gasto
FROM Clientes c
JOIN Veiculos v ON c.cliente_id = v.cliente_id
JOIN OrdensDeServico o ON v.veiculo_id = o.veiculo_id
JOIN Servicos s ON o.servico_id = s.servico_id
GROUP BY c.cliente_id
HAVING total_gasto > 200;

-- Pergunta: Qual é a descrição do serviço, nome do cliente e placa do veículo para todas as ordens de serviço em progresso?
SELECT s.descricao, c.nome, v.placa
FROM OrdensDeServico o
JOIN Servicos s ON o.servico_id = s.servico_id
JOIN Veiculos v ON o.veiculo_id = v.veiculo_id
JOIN Clientes c ON v.cliente_id = c.cliente_id
WHERE o.status = 'Em Progresso';