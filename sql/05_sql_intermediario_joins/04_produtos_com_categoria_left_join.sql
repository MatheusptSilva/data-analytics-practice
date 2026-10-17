-- 4. Complementa a tabela DimProduct com a informação de ProductCategoryDescription. Utilize o LEFT JOIN e retorne em seu SELECT apenas as 5 colunas que considerar mais relevantes.

-- banco de dados
USE ContosoRetailDW;

-- DimProduct não tem categoria direta: o caminho é DimProduct -> DimProductSubcategory -> DimProductCategory.
SELECT
	p.ProductKey,
	p.ProductName,
	ps.ProductSubcategoryName,
	pc.ProductCategoryName,
	pc.ProductCategoryDescription
FROM
	DimProduct p
LEFT JOIN DimProductSubcategory ps
	ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN DimProductCategory pc
	ON ps.ProductCategoryKey = pc.ProductCategoryKey;
