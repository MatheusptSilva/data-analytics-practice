-- 7. Algumas subcategorias não possuem nenhum exemplar de produto. Identifique que subcategorias são essas.

SELECT * FROM DimProduct
SELECT * FROM DimProductSubcategory

SELECT 
	ps.ProductSubcategoryName
FROM
	DimProduct p
FULL JOIN DimProductSubcategory ps
	ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
WHERE p.ProductName IS NULL;