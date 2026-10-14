-- 3. a) Você deve fazer uma consulta à tabela FactOnlineSales e descobrir qual é o ID (CustomerKey) do cliente que mais realizou compras online (de acordo com a coluna SalesQuantity).

-- banco de dados
USE ContosoRetailDW;

SELECT
	TOP(1)
	CustomerKey,
	SUM(SalesQuantity) AS 'Total Comprado'
FROM
	FactOnlineSales
GROUP BY CustomerKey
ORDER BY SUM(SalesQuantity) DESC;

-- b) Feito isso, faça um agrupamento de total vendido (SalesQuantity) por ID do produto e descubra quais foram os top 3 produtos mais comprados pelo cliente da letra a).
-- O cliente é obtido por subconsulta (a), em vez de um ID fixo no código: se os dados mudarem, a resposta continua correta.
SELECT
	TOP(3)
	ProductKey,
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactOnlineSales
WHERE CustomerKey = (
	SELECT TOP(1) CustomerKey
	FROM FactOnlineSales
	GROUP BY CustomerKey
	ORDER BY SUM(SalesQuantity) DESC
)
GROUP BY ProductKey
ORDER BY SUM(SalesQuantity) DESC;
