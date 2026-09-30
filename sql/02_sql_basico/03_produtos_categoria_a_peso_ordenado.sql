-- 3. Você é responsável pelo setor de logística da empresa Contoso e precisa dimensionar o transporte de todos os produtos em categorias, de acordo com o peso.
-- Os produtos da categoria A, com peso acima de 100kg, deverão ser transportados na primeira leva.
-- Faça uma consulta no banco de dados para descobrir quais são estes produtos que estão na categoria A.

-- Banco de dados
USE ContosoRetailDW

-- a Você deverá retornar apenas 2 colunas nessa consulta: Nome do Produto e Peso.
SELECT * FROM DimProduct;

SELECT
	ProductName,
	Weight
FROM
	DimProduct
WHERE Weight > 100

-- b Renomeie essas colunas com nomes mais intuitivos.
SELECT
	ProductName AS 'Nome',
	Weight AS 'Peso'
FROM
	DimProduct
WHERE Weight > 100

-- c Ordene esses produtos do mais pesado para o mais leve.
SELECT
	ProductName AS 'Nome',
	Weight AS 'Peso'
FROM
	DimProduct
WHERE Weight > 100
ORDER BY Weight DESC;
