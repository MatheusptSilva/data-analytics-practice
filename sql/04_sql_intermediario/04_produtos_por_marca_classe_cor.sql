-- 4. a) Faça um agrupamento e descubra a quantidade total de produtos por marca.
SELECT * FROM DimProduct;

SELECT
	BrandName,
	COUNT(*) AS 'Qtd. Produtos'
FROM
	DimProduct
GROUP BY BrandName;

-- b) Determine a média do preço unitário (UnitPrice) para cada ClassName.
SELECT
	ClassName,
	AVG(UnitPrice) AS 'Média de preço'
FROM
	DimProduct
GROUP BY ClassName;

-- c) Faça um agrupamento de cores e descubra o peso total que cada cor de produto possui.
SELECT
	ColorName,
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct
GROUP BY ColorName;