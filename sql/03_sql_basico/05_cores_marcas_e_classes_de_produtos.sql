-- 5. Agora você precisa fazer uma análise dos produtos. Será necessário descobrir as seguintes informações:

-- a Quantidade distinta de cores de produtos.
-- b Quantidade distinta de marcas
-- c Quantidade distinta de classes de produto

SELECT * FROM DimProduct;

SELECT 
	COUNT(DISTINCT ColorName) AS 'Qtd. Distintas de Cores',
	COUNT(DISTINCT BrandName) AS 'Qtd. Distintas de Marca',
	COUNT(DISTINCT ClassName) AS 'Qtd. Distintas de Classe'
FROM
	DimProduct;