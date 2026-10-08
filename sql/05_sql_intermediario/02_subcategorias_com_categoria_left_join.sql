-- 2. Identifique uma coluna em comum entre as tabelas DimProductSubcategory e DimProductCategory. Utilize essa coluna para complementar informações na tabela DimProductSubcategory a partir da DimProductCategory. Utilize o LEFT JOIN.


SELECT * FROM DimProductSubcategory
SELECT * FROM DimProductCategory

SELECT
	ps.ProductSubcategoryKey,
	ps.ProductSubcategoryName,
	pc.ProductCategoryName
FROM
	DimProductSubcategory ps
LEFT JOIN DimProductCategory pc
	ON ps.ProductCategoryKey = pc.ProductCategoryKey;