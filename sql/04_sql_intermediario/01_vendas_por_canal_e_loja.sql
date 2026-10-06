-- 1. a) Faça um resumo da quantidade vendida (SalesQuantity) de acordo com o canal de vendas (channelkey).
SELECT TOP(10) * FROM FactSales;

SELECT 
	channelKey,
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
GROUP BY channelKey;

-- b) Faça um agrupamento mostrando a quantidade total vendida (SalesQuantity) e quantidade total devolvida (Return Quantity) de acordo com o ID das lojas (StoreKey).
SELECT 
	StoreKey,
	SUM(SalesQuantity) AS 'Total Vendidao',
	SUM(ReturnQuantity) AS 'Total Devolvido'
FROM
	FactSales
GROUP BY StoreKey;

-- c) Faça um resumo do valor total vendido (SalesAmount) para cada canal de venda, mas apenas para o ano de 2007.
SELECT 
	channelKey,
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
WHERE YEAR(DateKey) = 2007
GROUP BY channelKey;
