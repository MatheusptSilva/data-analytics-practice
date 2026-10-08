-- 3.Para cada loja da tabela DimStore, descubra qual o Continente e o Nome do País associados (de acordo com DimGeography). Seu SELECT final deve conter apenas as seguintes colunas: StoreKey, StoreName, EmployeeCount, ContinentName e RegionCountryName. Utilize o LEFT JOIN neste exercício.

SELECT * FROM DimStore
SELECT * FROM DimGeography

SELECT
	s.StoreKey,
	s.StoreName,
	s.EmployeeCount,
	g.ContinentName,
	g.RegionCountryName
FROM	
	DimStore s
LEFT JOIN DimGeography g
	ON s.GeographyKey = g.GeographyKey;