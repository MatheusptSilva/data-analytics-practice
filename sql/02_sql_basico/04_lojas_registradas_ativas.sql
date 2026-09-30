-- 4 Você foi alocado para criar um relatório das lojas registradas atualmente na Contoso.

-- Banco de dados 
USE ContosoRetailDW;

-- a Descubra quantas lojas a empresa tem no total. Na consulta que você deverá fazer à tabela DimStore, retorne as seguintes informações: StoreName, OpenDate, EmployeeCount
SELECT
	StoreName,
	OpenDate,
	EmployeeCount
FROM
	DimStore;

-- b Renomeeie as colunas anteriores para deixar a sua consulta mais intuitiva.
SELECT
	StoreName AS 'Nome da loja',
	OpenDate AS 'Data de abertura',
	EmployeeCount AS 'Qtd. Funcionários'
FROM
	DimStore;

-- c Dessas lojas, descubra quantas (e quais) lojas ainda estão ativas.
SELECT * FROM DimStore;

SELECT
	StoreName AS 'Nome da loja',
	OpenDate AS 'Data de abertura',
	EmployeeCount AS 'QTD Funcionários',
	Status
FROM
	DimStore
WHERE Status = 'On';