-- 4. A empresa Contoso precisa fazer contato com os fornecedores de produtos para repor o estoque. Você é da área de compras e precisa descobrir quem são esses fornecedores.

-- banco de dados
USE ContosoRetailDW;

-- verificando a tabela 
SELECT * FROM DimProduct;

-- 4 Utilize um comando em SQL para retornar apenas os nomes dos fornecedores na tabela dimProduct e renomeie essa nova coluna da tabela.
SELECT 
	DISTINCT Manufacturer AS "Fornecedores"
FROM
	DimProduct;