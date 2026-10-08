-- A tabela FactStrategyPlan resume o planejamento estratégico da empresa. Cada linha representa um montante destinado a uma determinada AccountKey. 

-- a) Faça um SELECT das 100 primeiras linhas de FactStrategyPlan para reconhecer a tabela.
SELECT TOP(100) * FROM FactStrategyPlan;


-- b) Faça um INNER JOIN para criar uma tabela contendo o AccountName para cada AccountKey da tabela FactStrategyPlan. O seu SELECT final deve conter as colunas: StrategyPlanKey DateKey AccountName Amount

SELECT TOP(10) * FROM DimAccount;

SELECT
	fcp.StrategyPlanKey,
	fcp.Datekey,
	a.AccountName,
	fcp.Amount
FROM	
	FactStrategyPlan fcp
INNER JOIN DimAccount a
	ON fcp.AccountKey = a.AccountKey;