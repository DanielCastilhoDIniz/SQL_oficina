CREATE DATABASE oficina;


USE oficina;
-- Tabela de Clientes
CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    email VARCHAR(100),
    telefone VARCHAR(15)
);

-- Tabela de Veículos
CREATE TABLE Veiculos (
    veiculo_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    placa VARCHAR(7),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    ano INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

-- Tabela de Serviços
CREATE TABLE Servicos (
    servico_id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255),
    preco DECIMAL(10,2)
);

-- Tabela de Ordens de Serviço
CREATE TABLE OrdensDeServico (
    ordem_id INT PRIMARY KEY AUTO_INCREMENT,
    veiculo_id INT,
    data_ordem DATE,
    servico_id INT,
    status ENUM('Pendente', 'Em Progresso', 'Concluído'),
    FOREIGN KEY (veiculo_id) REFERENCES Veiculos(veiculo_id),
    FOREIGN KEY (servico_id) REFERENCES Servicos(servico_id)
);

-- Tabela de Peças
CREATE TABLE Pecas (
    peca_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao TEXT,
    quantidade_em_estoque INT,
    fornecedor_id INT
);

-- Tabela de Fornecedores
CREATE TABLE Fornecedores (
    fornecedor_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    email VARCHAR(100),
    telefone VARCHAR(15)
);

-- Tabela de Funcionários
CREATE TABLE Funcionarios (
    funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    cargo ENUM('Mecânico', 'Gerente', 'Recepcionista', 'Vendedor'),
    salario DECIMAL(10,2),
    data_contratacao DATE
);

CREATE TABLE OrdensServicos_Servicos (
    ordem_servico_id INT,
    servico_id INT,
    PRIMARY KEY (ordem_servico_id, servico_id),
    FOREIGN KEY (ordem_servico_id) REFERENCES OrdensDeServico(ordem_id),
    FOREIGN KEY (servico_id) REFERENCES Servicos(servico_id)
);

CREATE TABLE OrdensServicos_Pecas (
    ordem_servico_id INT,
    peca_id INT,
    quantidade INT,
    PRIMARY KEY (ordem_servico_id, peca_id),
    FOREIGN KEY (ordem_servico_id) REFERENCES OrdensDeServico(ordem_id),
    FOREIGN KEY (peca_id) REFERENCES Pecas(peca_id)
);
CREATE TABLE Pecas_Fornecedores (
    peca_id INT,
    fornecedor_id INT,
    PRIMARY KEY (peca_id, fornecedor_id),
    FOREIGN KEY (peca_id) REFERENCES Pecas(peca_id),
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedores(fornecedor_id)
);

