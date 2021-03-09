/** 4. Descobrir o número de pagamentos maiores que 100,00 reais com o mesmo valor. **/
/** Uso da cláusula HAVING. **/
use mydb;
SELECT count(*) AS Quantidade_de_pagamentos_com_o_mesmo_valor, valor
FROM Pagamento 
GROUP BY valor 
HAVING valor > 100.00
ORDER BY valor asc;