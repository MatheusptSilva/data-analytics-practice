-- 7. Algumas subcategorias não possuem nenhum exemplar de produto. Identifique que subcategorias são essas.

-- banco de dados
USE ContosoRetailDW;

-- Parte da tabela de subcategorias e mantém quem não encontrou correspondência em DimProduct.
SELECT
	ps.ProductSubcategoryKey,
	ps.ProductSubcategoryName
FROM
	DimProductSubcategory ps
LEFT JOIN DimProduct p
	ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
WHERE p.ProductKey IS NULL;
