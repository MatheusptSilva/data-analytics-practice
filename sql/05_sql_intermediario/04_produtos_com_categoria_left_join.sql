-- 4. Complementa a tabela DimProduct com a informação de ProductCategoryDescription. Utilize o LEFT JOIN e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes.

SELECT * FROM DimProduct
SELECT * FROM DimProductCategory

SELECT
	p.ProductName,
	ps.ProductSubcategoryDescription
FROM
	DimProduct p
LEFT JOIN DimProductSubcategory ps
	ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
		LEFT JOIN DimProductCategory pc
			ON ps.ProductCategoryKey = pc.ProductCategoryKey;