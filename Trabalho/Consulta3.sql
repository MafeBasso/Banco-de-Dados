/** 3. Encontre todas as pessoas que foram ou não membro de comitê de programa, com as informações da tabela Pessoa e Membro_do_Comite. **/
/** Uso de junção externa (RIGHT ou LEFT). **/
use mydb;
SELECT *
FROM Pessoa
LEFT JOIN Membro_do_comite
ON id = Membro_do_Comite.Pessoa_id;