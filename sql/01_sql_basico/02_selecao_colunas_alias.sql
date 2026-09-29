-- 2. Você trabalha no setor de marketing da empresa Contoso e acaba de ter uma ideia de oferecer descontos especiais para os clientes no dia de seus aniversários. Para isso, você vai precisar listar todos os clientes e as suas respectivas datas de nascimento, além de um contato.

-- banco de dados
USE ContosoRetailDW;

-- verificando a tabela 
SELECT TOP (10) * FROM DimCustomer;  

-- 2.a Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabela dimCustomer.
SELECT
	CustomerKey,
	FirstName,
	EmailAddress,
	BirthDate
FROM
	DimCustomer;

-- 2.b Renomeie as colunas dessa tabela usando o alias (comando AS).
SELECT
	CustomerKey AS "ID do Cliente",
	FirstName AS "Nome", 
	EmailAddress AS "E-mail",
	BirthDate AS "Data de Nascimento"
FROM
	DimCustomer;