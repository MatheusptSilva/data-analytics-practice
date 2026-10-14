-- 8. A tabela abaixo mostra a combinação entre Marca e Canal de Venda, para as marcas Contoso, Fabrikam e Litware. Crie um código SQL para chegar no mesmo resultado.

-- banco de dados
USE ContosoRetailDW;

-- Primeiro reduz DimProduct às marcas distintas e só depois faz o CROSS JOIN com os canais (evita cruzar todos os produtos).
SELECT
	b.BrandName,
	c.ChannelName
FROM
	(SELECT DISTINCT BrandName
	 FROM DimProduct
	 WHERE BrandName IN ('Contoso', 'Fabrikam', 'Litware')) b
CROSS JOIN DimChannel c;
