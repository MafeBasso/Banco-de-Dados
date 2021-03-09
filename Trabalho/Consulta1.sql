/** 1. Encontre todos os pagamentos que foram destinados a prêmios. **/
/** Uso do comando LIKE como forma de busca de informação em campos do tipo texto. **/
use mydb;
SELECT *
FROM pagamento
WHERE descricao LIKE '%prêmio%';