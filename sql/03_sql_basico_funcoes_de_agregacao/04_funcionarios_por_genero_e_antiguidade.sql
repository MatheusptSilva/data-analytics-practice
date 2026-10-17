-- 4. A área de RH está com uma nova ação para a empresa, e para isso precisa saber a quantidade total de funcionários do sexo Masculino e do sexo Feminino.

-- banco de dados
USE ContosoRetailDW;

-- a Descubra essas duas informações utilizando o SQL.
SELECT
	Gender,
	COUNT(*) AS 'Qtd. Funcionários'
FROM
	DimEmployee
GROUP BY Gender;

-- b O funcionário e a funcionária mais antigos receberão uma homenagem. Descubra as seguintes informações de cada um deles: Nome, E-mail, Data de Contratação.

-- Funcionário mais antigo (sexo masculino)
SELECT
	TOP(1)
	FirstName AS 'Nome',
	EmailAddress AS 'E-mail',
	HireDate AS 'Data de contratação'
FROM
	DimEmployee
WHERE Gender = 'M'
ORDER BY HireDate ASC;

-- Funcionária mais antiga (sexo feminino)
SELECT
	TOP(1)
	FirstName AS 'Nome',
	EmailAddress AS 'E-mail',
	HireDate AS 'Data de contratação'
FROM
	DimEmployee
WHERE Gender = 'F'
ORDER BY HireDate ASC;
