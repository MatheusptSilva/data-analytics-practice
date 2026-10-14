/* 5. Você precisa criar uma consulta para mostrar a lista de produtos da tabela DimProduct para uma subcategoria específica: ‘Lamps’.
Utilize o conceito de variáveis para chegar neste resultado. */

USE ContosoRetailDW;

SELECT * FROM DimProduct;
SELECT * FROM DimProductSubcategory;

DECLARE @idsubcategoria INT
DECLARE @nomesubcategoria VARCHAR(30)

SET @nomesubcategoria = 'Lamps'
SET @idsubcategoria = (SELECT ProductSubcategoryKey FROM DimProductSubcategory WHERE ProductSubcategoryName = @nomesubcategoria)

SELECT * FROM DimProduct WHERE ProductSubcategoryKey = @idsubcategoria