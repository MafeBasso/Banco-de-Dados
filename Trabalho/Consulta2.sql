/** 2. Recupere os dados de todos os competidores que ganharam alguma competição. **/
/** Uso de comandos de pertinência a conjuntos (IN ou ALL). **/
use mydb;
SELECT *
FROM Competidor
WHERE Posicao = ALL (SELECT Posicao FROM Competidor WHERE Posicao = 1);