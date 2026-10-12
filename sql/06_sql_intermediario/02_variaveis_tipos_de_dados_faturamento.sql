-- 2. Para cada declaração das variáveis abaixo, atenção em relação ao tipo de dado que deverá ser especificado.

-- a) Declare uma variável chamada ‘produto’ e atribua o valor de ‘Celular’.
DECLARE @produto VARCHAR(20) = 'Celular';
SELECT @produto AS 'Produto';

-- b) Declare uma variável chamada ‘quantidade’ e atribua o valor de 12.
DECLARE @quantidade INT = 12
SELECT @quantidade AS 'Quantidade'

-- c) Declare uma variável chamada ‘preco’ e atribua o valor 9.99.
DECLARE @preco FLOAT = 9.99
SELECT @preco AS 'Preco'

-- d) Declare uma variável chamada ‘faturamento’ e atribua o resultado da multiplicação entre ‘quantidade’ e ‘preco’.
DECLARE @faturamento INT = @quantidade * @preco
SELECT @faturamento AS 'Faturamento'

-- e) Visualize o resultado dessas 4 variáveis em uma única consulta, por meio do SELECT.
SELECT @produto AS 'Produto' , @quantidade AS 'Quantidade', @preco AS 'Preco', @faturamento AS 'Faturamento'