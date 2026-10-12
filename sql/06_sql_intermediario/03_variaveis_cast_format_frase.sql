/* 3. Você é responsável por gerenciar um banco de dados onde são recebidos dados externos de usuários. Em resumo, esses dados são:
- Nome do usuário
- Data de nascimento
- Quantidade de pets que aquele usuário possui
Você precisará criar um código em SQL capaz de juntar as informações fornecidas por este usuário. Para simular estes dados, crie 3 variáveis, chamadas: nome, data_nascimento e num_pets. Você deverá armazenar os valores ‘André’, ‘10/02/1998’ e 2, respectivamente.
O resultado final a ser alcançado é mostrado no print abaixo:
Dica: você precisará utilizar as funções CAST e FORMAT para chegar no resultado. */

DECLARE @nome VARCHAR(20) = 'Sarah',
        @data_nascimento DATETIME = '2008-11-10',
        @nun_pets INT = 1;

SELECT 'Meu nome é ' + @nome
       + ', nasci em ' + FORMAT(@data_nascimento, 'dd/MM/yyyy')
       + ' e tenho ' + CAST(@nun_pets AS VARCHAR(10))
       + ' pets.' AS 'Informações do usuário';