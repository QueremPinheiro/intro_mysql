- - Querem Pinheiro
- - professor:@profadevairvitorio

- - Crud Para as Seguntes Entidades:

- - clientes(id, nome, email,telefone)
- - veiculo(id,placa, ano, marca, id_cliente)
- - funcionarios(id, nome, funcao, salario, matricula, status_funcionario)


- - Criar uma base de dados;
	CREATE DATABASE empresa_localiza;

- - Conectar na base de dados;
	USE empresa_localiza;

- - Criar as tabelas e adicionaro id automatico;
- - Cliente:

	CREATE TABLE clientes(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	telefone VARCHAR(12)
	);

- - Veiculos:

	CREATE TABLE veiculos(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	placa VARCHAR(8) NOT NULL,
	ano INTEGER NOT NULL,
	marca VARCHAR(30),
	id_cliente INTEGER NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES clientes(id)
	);

- - Funcionarios:

	CREATE TABLE funcionarios(
	id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	funcao VARCHAR(8) NOT NULL,
	salario DOUBLE NOT NULL,
	matricula INTEGER,
	status_funcionario INTEGER NOT NULL
	);

- - Inseriri dados nabase de dados usando o comando INSERT;

- - Clientes:

	INSERT INTO clientes (nome, email, telefone) VALUES ("João", "joao@uol.com", "27999885586");
	INSERT INTO clientes (nome, email, telefone) VALUES ("Adevair", "adevair@mysql.com.br", "2799997965");
	INSERT INTO clientes (nome, email, telefone) VALUES ("Maria da silva", "mysql@mysql.com.br", "27999969965");

- - Veiculos:
	
	INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("OKP-5558", 2022, "Gol", 1);
	INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("JKL-5569", 2022, "Honda", 2);
	INSERT INTO veiculos (placa, ano, marca, id_cliente) VALUES ("ADE-1234", 2022, "Gol", 3);

- - Funcionarios:
- - Status_funcionario: 0 - Inativo | 1 - Ativo

	INSERT INTO funcionarios (nome, funcao, salario, matricula, status_funcionario) VALUES ("Cleitinho", "Gerente", 5050.50, 123456, 1);
	INSERT INTO funcionarios (nome, funcao, salario, matricula, status_funcionario) VALUES ("Manuelzinho", "Vendedor", 1325.54, 654321, 0);

- - Criar consultas usando o comando SELECT;

- - Clientes:
- - Todos os campos de todos os clientes:

	SELECT * FROM clientes;

- - Email do cliente com id = 2:

	SELECT email FROM clientes WHERE id=2;

- - Todos os nomes dos clientes:

	SELECT nome FROM clientes;

- - Todos os telefones dos clientes:

	SELECT email,telefone FROM clientes;

- - Lista telefonica:

	SELECT nome,telefone FROM clientes;

- - Veiculos:
- - Todos os campos de todos os veiculos:

	SELECT * FROM veiculos;

- - Placa do veiculo com id = 3:

	SELECT placa FROM veiculos WHERE id = 3;

- - Todas as placas dos veiculos:

	SELECT placa FROM veiculos;

- - Todos os veiculos do cliente com id = 1:

	SELECT * FROM veiculos WHERE id_cliente = 1;

- - Funcionarios:
- - Todos os funcionarios:

	SELECT * FROM funcionarios;


- - Todos os funcionarios ativos:

	SELECT * FROM funcionarios WHERE status_funcionario = 1;

- - Matricula de todos os funcionarios:

	SELECT matricula FROM funcionarios;

- - Função e salario de todos os funcionarios:
 
	SELECT funcao, salario FROM funcionarios;

- - Função, salario e status de todos os funcionarios ativos:

	SELECT funcao, salario, status_funcionario FROM funcionarios WHERE status_funcionario = 1;

- - Atualizar os registros existentes usando o comando UPDATE:
- - Clientes:

- - Atualize o nome do cliente de id = 6 para "Cliente Atualizado"

	UPDATE clientes SET nome = "Cliente Atualizado" WHERE id = 6;

- - Veiculos:

- - Atualize o ano do veiculo do cliente de is - 6 para 1997:

	UPDATE veiculos SET ano = 1997 WHERE id_cliente = 6;

- - Funcionarios:

- - Atualize o nome do funcionário de id = 3 para “Amo Crud”:

	UPDATE funcionarios SET nome = "Amp Crud" WHERE id = 3;

- - Deletar alguns registros usando o Comando DELETE:
- - Veículos:

- - Apagar o veículo de id = 2;

	DELETE FROM veiculos WHERE id = 2;

- - Apagar todos os veículos do cliente com id = 1;

	DELETE FROM veiculos WHERE id_cliente = 1;

- - Apagar todos os veículos:

	DELETE FROM veiculos WHERE TRUE;

- - Clientes:
- - Apagar o cliente de id = 1:

	DELETE FROM clientes WHERE id=1;

- - Apagar todos os clientes com nome = “Adevair”:

	DELETE FROM clientes WHERE nome = "Adevair";

- - Apagar todos os clientes:

	DELETE FROM clientes WHERE TRUE;

- - Funcionários
- - Apague o funcionário de id = 1:

	DELETE FROM funcionarios WHERE id = 1;

- - Apague todos os funcionários inativos:

	DELETE FROM funcionarios WHERE status_funcionario = 0;


	









