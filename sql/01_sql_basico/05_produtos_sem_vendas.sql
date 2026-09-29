-- 5. O seu trabalho de investigação não para. Você precisa descobrir se existe algum produto registrado na base de produtos que ainda não tenha sido vendido. Tente chegar nessa informação.
-- Obs: caso tenha algum produto que ainda não tenha sido vendido, você não precisa descobrir qual é, é suficiente saber se teve ou não algum produto que ainda não foi vendido.

-- banco de dados
USE ContosoRetailDW;

-- verificando a tabelas
SELECT * FROM DimProduct;

SELECT TOP(10) * FROM FactSales;

-- -- 5 Utilize um comando em SQL para retornar apenas os nomes dos fornecedores na tabela dimProduct e renomeie essa nova coluna da tabela.
SELECT 
	DISTINCT Manufacturer AS "Fornecedores"
FROM
	DimProduct;

--
SELECT 
	DISTINCT ProductKey
FROM 
	FactSales

