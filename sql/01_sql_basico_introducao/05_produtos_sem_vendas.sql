-- 5. O seu trabalho de investigação não para. Você precisa descobrir se existe algum produto registrado na base de produtos que ainda não tenha sido vendido. Tente chegar nessa informação.
-- Obs: caso tenha algum produto que ainda não tenha sido vendido, você não precisa descobrir qual é, é suficiente saber se teve ou não algum produto que ainda não foi vendido.

-- banco de dados
USE ContosoRetailDW;

-- Exploração inicial (não faz parte da resposta final)
-- SELECT TOP(10) * FROM DimProduct;
-- SELECT TOP(10) * FROM FactSales;

-- Existe algum produto cadastrado que nunca foi vendido?
-- NOT EXISTS compara DimProduct com FactSales e não sofre com valores NULL (ao contrário do NOT IN).
SELECT
	CASE
		WHEN EXISTS (
			SELECT 1
			FROM DimProduct AS p
			WHERE NOT EXISTS (
				SELECT 1
				FROM FactSales AS f
				WHERE f.ProductKey = p.ProductKey
			)
		) THEN 'Sim, existe produto sem venda'
		ELSE 'Não, todos os produtos foram vendidos'
	END AS Resultado;
