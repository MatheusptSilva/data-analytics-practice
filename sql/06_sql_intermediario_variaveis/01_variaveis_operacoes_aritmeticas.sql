/* 1. Declare 4 variáveis inteiras. Atribua os seguintes valores a elas:

valor1 = 10
valor2 = 5
valor3 = 34
valor4 = 7

a) Crie uma nova variável para armazenar o resultado da soma entre valor1 e valor2. Chame essa variável de soma.
b) Crie uma nova variável para armazenar o resultado da subtração entre valor3 e valor 4. Chame essa variável de subtracao.
c) Crie uma nova variável para armazenar o resultado da multiplicação entre o valor 1 e o valor4. Chame essa variável de multiplicacao.
d) Crie uma nova variável para armazenar o resultado da divisão do valor3 pelo valor4. Chame essa variável de divisao. Obs: O resultado deverá estar em decimal, e não em inteiro.
e) Arredonde o resultado da letra d) para 2 casas decimais.

*/

DECLARE @valor1 INT = 10, @valor2 INT = 5, @valor3 INT = 34, @valor4 INT = 7;

SELECT @valor1 AS valor1, @valor2 AS valor2, @valor3 AS valor3, @valor4 AS valor4;

-- a)
DECLARE @soma INT = @valor1 + @valor2;
SELECT @soma AS soma;

-- b)
DECLARE @subtracao INT = @valor3 - @valor4;
SELECT @subtracao AS subtracao;

-- c)
DECLARE @multiplicacao INT = @valor1 * @valor4;
SELECT @multiplicacao AS multiplicacao;

-- d) Divisão de INT por INT retorna INT no SQL Server (34 / 7 = 4).
-- Por isso um dos valores é convertido para DECIMAL antes da divisão.
DECLARE @divisao DECIMAL(10,4) = CAST(@valor3 AS DECIMAL(10,4)) / @valor4;
SELECT @divisao AS divisao;

-- e)
SELECT CAST(ROUND(@divisao, 2) AS DECIMAL(10,2)) AS divisao_arredondada;
