/* 4. Você acabou de ser promovido e o seu papel será realizar um controle de qualidade sobre as lojas da empresa.
A primeira informação que é passada a você é que o ano de 2008 foi bem complicado para a empresa, pois foi quando duas das principais lojas fecharam. O seu primeiro desafio é descobrir o nome dessas lojas que fecharam no ano de 2008, para que você possa entender o motivo e mapear planos de ação para evitar que outras lojas importantes tomem o mesmo caminho.
O seu resultado deverá estar estruturado em uma frase, com a seguinte estrutura:
‘As lojas fechadas no ano de 2008 foram: ’ + nome_das_lojas
Obs: utilize o comando PRINT (e não o SELECT!) para mostrar o resultado. */

-- banco de dados
USE ContosoRetailDW;

-- Exploração: lojas que fecharam em 2008
SELECT StoreName, CloseDate FROM DimStore
WHERE YEAR(CloseDate) = 2008;

-- VARCHAR(MAX) evita que a lista seja cortada se os nomes forem longos.
DECLARE @lista_lojas VARCHAR(MAX) = '';

-- O separador só entra a partir da segunda loja, então não sobra vírgula no final.
SELECT
	@lista_lojas = @lista_lojas + CASE WHEN @lista_lojas = '' THEN '' ELSE ', ' END + StoreName
FROM
	DimStore
WHERE YEAR(CloseDate) = 2008;

PRINT 'As lojas fechadas no ano de 2008 foram: ' + @lista_lojas;
