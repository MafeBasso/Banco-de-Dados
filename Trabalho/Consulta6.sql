/** 6. Verificar quais entidades são ao mesmo tempo realizadoras e promotoras de um evento. **/
/** Usando ao menos UMA RELAÇÃO com DOIS PAPÉIS diferentes. **/
use mydb;
SELECT cnpj, Evento_id, nome, endereco
FROM Entidade
INNER JOIN Promotor ON cnpj = Entidade_cnpj
INNER JOIN Realizador ON Promotor.Entidade_cnpj = Realizador.Entidade_cnpj
ORDER BY Evento_id asc;