-- 3. Você precisará fazer uma análise da quantidade de funcionários das lojas registradas na empresa. O seu gerente te pediu os seguintes números e informações:

-- a Quantos funcionários tem a loja com mais funcionários?
SELECT * FROM DimStore;

SELECT MAX(EmployeeCount) AS 'Maior Qtd. Funcionários' FROM DimStore;

-- b Qual é o nome dessa loja?
SELECT
	TOP(1) 
	StoreName AS 'Nome da loja',
	EmployeeCount AS 'Maior Qtd, Funcionários'
FROM
	DimStore
ORDER BY EmployeeCount DESC;

-- c Quantos funcionários tem a loja com menos funcionários?
SELECT MIN(EmployeeCount) AS 'Menor Qtd. Funcionários' FROM DimStore;

-- d Qual é o nome dessa loja?
SELECT	
	TOP(1) 
	StoreName AS 'Nome da loja',
	EmployeeCount AS 'Menor Qtd, Funcionários'
FROM
	DimStore
WHERE EmployeeCount IS NOT NULL
ORDER BY EmployeeCount ASC;