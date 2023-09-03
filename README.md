# SQL_oficina
Estudo SQL ,SGBD mySQL cenário oficina 


**Descrição do Projeto da Oficina:**

Neste projeto, foi desenvolvido um sistema de gerenciamento de banco de dados para uma oficina automotiva. Através do banco de dados, a oficina pode gerenciar informações relacionadas a clientes, veículos, serviços, ordens de serviço, peças, fornecedores e funcionários. Abaixo, descrevemos os principais componentes e funcionalidades do sistema:

1. **Clientes**: A oficina mantém um registro de todos os seus clientes, incluindo nome, e-mail e telefone.

2. **Endereços**: A oficina armazena endereços detalhados que podem ser vinculados a diversas entidades, como clientes ou fornecedores.

3. **Veículos**: Cada veículo está associado a um cliente específico e possui informações como placa, marca, modelo e ano.

4. **Serviços**: A oficina oferece uma variedade de serviços, cada um com sua descrição e preço associado.

5. **Ordens de Serviço**: Representa um trabalho específico a ser realizado em um veículo. Cada ordem de serviço está ligada a um veículo e a um serviço específico e possui um status que indica o progresso do trabalho.

6. **Peças**: A oficina mantém um inventário de peças, com informações sobre nome, descrição e quantidade em estoque. Além disso, cada peça pode estar associada a múltiplos fornecedores.

7. **Fornecedores**: Representa empresas ou indivíduos que fornecem peças para a oficina. Informações como nome, e-mail e telefone são armazenadas.

8. **Funcionários**: A oficina emprega várias pessoas em diferentes cargos, como mecânicos, gerentes e vendedores. O sistema mantém um registro de cada funcionário, incluindo seu nome, cargo, salário e data de contratação.

9. **Tabelas de Relação**: Existem tabelas específicas para gerenciar as relações entre ordens de serviço e os serviços associados, ordens de serviço e peças necessárias, e peças e seus respectivos fornecedores.

As queries desenvolvidas permitem que a oficina recupere informações de várias maneiras, desde uma simples lista de clientes até análises mais complexas, como determinar quanto cada cliente gastou em serviços ou identificar todos os serviços em progresso.
