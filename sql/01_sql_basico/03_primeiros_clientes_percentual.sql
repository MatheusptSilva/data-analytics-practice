-- 3. A Contoso está comemorando aniversário de inauguração de 10 anos e pretende fazer uma ação de premiação para os clientes. A empresa quer presentear os primeiros clientes desde a inauguração.

-- banco de dados
USE ContosoRetailDW;

-- 3.a A Contoso decidiu presentear os primeiros 100 clientes da história com um vale compras de R$ 10.000. Utilize um comando em SQL para retornar uma tabela com os primeiros 100 primeiros clientes da tabela dimCustomer (selecione todas as colunas).
SELECT TOP (100) * FROM DimCustomer;

-- 3.b A Contoso decidiu presentear os primeiros 20% de clientes da história com um vale compras de R$ 2.000. Utilize um comando em SQL para retornar 10% das linhas da sua tabela dimCustomer (selecione todas as colunas).
SELECT TOP (20) PERCENT * FROM DimCustomer;

-- 3.c Adapte o código do item a) para retornar apenas as 100 primeiras linhas, mas apenas as colunas FirstName, EmailAddress, BirthDate.
SELECT
	TOP (100)
	FirstName,
	EmailAddress,
	BirthDate
FROM
	DimCustomer;

-- 3.d Renomeie as colunas anteriores para nomes em português.
SELECT
	TOP (100)
	FirstName AS "Nome",
	EmailAddress AS "E-mail",
	BirthDate AS "Data de Nascimento"
FROM
	DimCustomer;