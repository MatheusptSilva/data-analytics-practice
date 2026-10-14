-- 5 O gerente da área de controle de qualidade notificou à Contoso que todos os produtos Home Theater da marca Litware, disponibilizados para venda no dia 15 de março de 2009, foram identificados com defeitos de fábrica.
-- O que você deverá fazer é identificar os ID’s desses produtos e repassar ao gerente para que ele possa notificar as lojas e consequentemente solicitar a suspensão das vendas desses produtos.

-- Banco de dados
USE ContosoRetailDW;

-- Exploração inicial (não faz parte da resposta final)
-- SELECT TOP(10) * FROM DimProduct;

-- O enunciado pede os ID's dos produtos (ProductKey); o nome vai junto apenas como apoio para o gerente.
SELECT
	ProductKey,
	ProductName
FROM
	DimProduct
WHERE BrandName = 'Litware'
	AND ProductName LIKE '%Home Theater%'
	AND AvailableForSaleDate = '20090315';
