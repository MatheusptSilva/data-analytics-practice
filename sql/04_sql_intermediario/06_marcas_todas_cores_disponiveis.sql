-- 6. Você seria capaz de confirmar se todas as marcas dos produtos possuem à disposição todas as 16 opções de cores?
SELECT * FROM DimProduct;

SELECT
	BrandName,
	COUNT(DISTINCT ColorName) AS 'Qtd. cores'
FROM
	DimProduct
GROUP BY BrandName;