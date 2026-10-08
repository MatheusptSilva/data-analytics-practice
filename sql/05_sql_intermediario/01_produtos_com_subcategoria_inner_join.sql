-- 1. Utilize o INNER JOIN para trazer os nomes das subcategorias dos produtos, da tabela DimProductSubcategory para a tabela DimProduct.

SELECT * FROM DimProduct;
SELECT * FROM DimProductSubcategory;

SELECT 
	p.ProductKey,
	p.ProductName,
	p.ProductSubcategoryKey,
	ps.ProductSubcategoryName
FROM
	DimProduct p
INNER JOIN DimProductSubcategory ps
	ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey;