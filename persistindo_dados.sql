USE oficina;
-- Inserindo Endereços
INSERT INTO Enderecos (rua, numero, complemento, bairro, cidade, estado, CEP)
VALUES
('Rua das Flores', '123', 'Apto 204', 'Centro', 'Rio de Janeiro', 'RJ', '20031020'),
('Av. Paulista', '4567', '', 'Bela Vista', 'São Paulo', 'SP', '01311200');

-- Inserindo Clientes
INSERT INTO Clientes (nome, email, telefone)
VALUES 
('João Silva', 'joao.silva@example.com', '(21) 98765-4321'),
('Maria Pereira', 'maria.pereira@example.com', '(11) 97654-3210');

-- Inserindo Veículos
INSERT INTO Veiculos (cliente_id, placa, marca, modelo, ano)
VALUES
(1, 'RIO1234', 'Toyota', 'Corolla', 2019),
(2, 'SPR5678', 'Honda', 'Civic', 2018);

-- Inserindo Serviços
INSERT INTO Servicos (descricao, preco)
VALUES
('Troca de Óleo', 80.00),
('Alinhamento', 100.00);

-- Inserindo Ordens de Serviço
INSERT INTO OrdensDeServico (veiculo_id, data_ordem, servico_id, status)
VALUES
(1, '2023-08-27', 1, 'Pendente'),
(2, '2023-08-28', 2, 'Em Progresso');

-- Inserindo Peças
INSERT INTO Pecas (nome, descricao, quantidade_em_estoque)
VALUES
('Filtro de Óleo', 'Filtro de Óleo para diversos veículos', 50),
('Pneu Aro 15', 'Pneu Aro 15 para sedans e compactos', 20);

-- Inserindo Fornecedores
INSERT INTO Fornecedores (nome, email, telefone)
VALUES
('Peças LTDA', 'contato@pecas.com', '(11) 98888-7777'),
('Fornecedora Global', 'atendimento@global.com', '(21) 99999-6666');

-- Inserindo Funcionários
INSERT INTO Funcionarios (nome, cargo, salario, data_contratacao)
VALUES
('Felipe', 'Mecânico', 2500.00, '2020-01-10'),
('Carla', 'Gerente', 5000.00, '2018-03-15');

-- Inserindo Relações de Serviços
INSERT INTO OrdensServicos_Servicos (ordem_servico_id, servico_id)
VALUES
(1, 1),
(2, 2);

-- Inserindo Relações de Peças
INSERT INTO OrdensServicos_Pecas (ordem_servico_id, peca_id, quantidade)
VALUES
(1, 1, 1),
(2, 2, 2);

-- Inserindo Relações de Peças com Fornecedores
INSERT INTO Pecas_Fornecedores (peca_id, fornecedor_id)
VALUES
(1, 1),
(2, 2);
