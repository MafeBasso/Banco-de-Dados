/** 5. Liste todas as sessões de apresentação de artigos e suas informações correlatas relacionadas a descrição do artigo, o local da apresentação, a data e o horário além das informações do autor do artigo. Isso onde a sessão tenha ocorrido entre às 9 e 10 horas do dia 03/06/2021. **/
/** Usando QUATRO RELAÇÕES diferentes do modelo do banco de dados. **/
use mydb;
SELECT Apresentacao_de_Artigos.id AS id_da_apresentacao, Apresentacao_de_Artigos.Evento_id, Apresentacao_de_Artigos.tipo_artigos, Apresentacao_de_Artigos.numero_sessoes AS total_de_sessoes,
Artigo.id AS id_do_artigo, Artigo.nome,
Autor.Pessoa_id AS id_do_autor,
Sessao.num AS numero_da_sessao, Sessao.data AS data_da_sessao, Sessao.Local_id AS id_do_local_da_sessao, Sessao.nome AS nome_da_sessao
FROM Apresentacao_de_Artigos
INNER JOIN Artigo ON Apresentacao_de_Artigos.id = Artigo.Apresentacao_de_Artigos_id
INNER JOIN Autor ON Artigo.Apresentacao_de_Artigos_id = Autor.Artigo_Apresentacao_de_Artigos_id
INNER JOIN Sessao ON Autor.Artigo_Apresentacao_de_Artigos_id = Sessao.Apresentacao_de_Artigos_id
WHERE Sessao.data BETWEEN '2021-06-03 09:00:00' AND '2021-06-03 10:00:00'
ORDER BY Evento_id asc;