-- 6. Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas as 16 opções de cores?

-- banco de dados
USE ContosoRetailDW;

-- Total de cores distintas na base (deve ser 16)
SELECT COUNT(DISTINCT ColorName) AS 'Total de cores' FROM DimProduct;

-- Cores distintas por marca
SELECT
	BrandName,
	COUNT(DISTINCT ColorName) AS 'Qtd. cores'
FROM
	DimProduct
GROUP BY BrandName;

-- Resposta direta: marcas que NÃO possuem todas as cores. Se o resultado vier vazio, todas as marcas possuem as 16 cores.
SELECT
	BrandName,
	COUNT(DISTINCT ColorName) AS 'Qtd. cores'
FROM
	DimProduct
GROUP BY BrandName
HAVING COUNT(DISTINCT ColorName) <> (SELECT COUNT(DISTINCT ColorName) FROM DimProduct);
