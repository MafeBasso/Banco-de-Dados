use mydb;
/** Evento 1: **/

INSERT INTO Evento VALUES (1, "Semana de Sistemas de Informação", 5, "Semana Acadêmica de Sistemas de Informação");

INSERT INTO Local VALUES (1, "https://www.twitch.tv/each_ssi", 2000000000);

INSERT INTO Entidade VALUES ("94613522000102", 1, "DASI-USP", "Rua Arlindo Béttio, 1000 - Ermelino Matarazzo, São Paulo - SP, CEP 03828-000");
INSERT INTO Realizador VALUES ("94613522000102", 1);
INSERT INTO Promotor VALUES ("94613522000102", 1);

INSERT INTO Facebook VALUES ("https://www.facebook.com/DASIUSP/", "94613522000102");
INSERT INTO Publicacao_Facebook VALUES (1, "https://www.facebook.com/DASIUSP/", 20, 46, 30, 29, 0, 0, 0, 0);
INSERT INTO Publicacao_Facebook VALUES (2, "https://www.facebook.com/DASIUSP/", 30, 63, 40, 51, 0, 2, 0, 1);
INSERT INTO Publicacao_Facebook VALUES (3, "https://www.facebook.com/DASIUSP/", 17, 28, 22, 10, 0, 12, 16, 0);

INSERT INTO Instagram VALUES ("@dasiusp", "94613522000102");
INSERT INTO Publicacao_Instagram VALUES (1, "@dasiusp", 57, 30);
INSERT INTO Publicacao_Instagram VALUES (2, "@dasiusp", 143, 472);

INSERT INTO Pessoa VALUES (1, "50141104141", "Augusto Borella Hougaz");
INSERT INTO Palestrante VALUES (1, "Possui graduação e doutorado em Engenharia Mecância pela Universidade de São Paulo.", "INTELIE", "Augusto Borella Hougaz (CPF: 501.411.041-41) participou como palestrante em Tempo Real de Operações: Transformando Dados em Resultado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Palestra VALUES (1, 1, 1, 1, '2020-09-21 13:30:00', "Tempo Real de Operações: Transformando Dados em Resultado", "1 hora", "Interessados em Big Data, análise de dados e IoT.");

INSERT INTO Pessoa VALUES (2, "41715276218", "Guilherme Silveira");
INSERT INTO Palestrante VALUES (2, "Co-fundador da Caelum e Head of education na Alura.", "Caelum e Alura", "Guilherme Silveira (CPF: 417.152.762-18) participou como palestrante em Ciência do aprendizado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Palestra VALUES (2, 1, 2, 1, '2020-09-22 16:30:00', "Ciência do aprendizado", "1 hora", "Interessados em educação e tecnologia.");

INSERT INTO Pessoa VALUES (3, "31905176200", "Felipe Braga");
INSERT INTO Palestrante VALUES (3, "Possui graduação em Engenharia da Computação pela Pontifícia Universidade Católica.", "BTG Pactual", "Felipe Braga (CPF: 319.051.762-00) participou como palestrante em Computação em nuvem, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Palestra VALUES (3, 1, 3, 1, '2020-09-22 18:30:00', "Computação em nuvem", "1 hora", "Interessados em computação em nuvem.");

INSERT INTO Pessoa VALUES (4, "10171902707", "Rafael Souza");
INSERT INTO Palestrante VALUES (4, "Possui graduação em Ciência da Computação pelo Centro Universitário de Brasília (UniCEUB), além de ser um dos 4 brasileiros a entrar no Hall da Fama de Segurança do Google.", "@hackingnaweb" , "Rafael Souza (CPF: 101.719.027-07) participou como palestrante em As 10 vulnerabilidades web mais comuns, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Palestra VALUES (4, 1, 4, 1, '2020-09-23 16:30:00', "As 10 vulnerabilidades web mais comuns", "1 hora", "Interessados em vulnerabilidades web.");

INSERT INTO Pessoa VALUES (5, "11171102707", "Eduardo Tardelli");
INSERT INTO Palestrante VALUES (5, "Possui graduação em Engenharia Eletrônica pela Universidade de São Paulo (USP) e pós-graduação em Administração de Empresas pela Fundação Getúlio Vargas e Gestão de Projetos pela USP.", "upLexis", "Eduardo Tardelli (CPF: 111.711.027-07) participou como palestrante em Formei na USP e fui empreender!, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Palestra VALUES (5, 1, 5, 1, '2020-09-24 18:30:00', "Formei na USP e fui empreender!", "1 hora", "Interessados em empreender.");

INSERT INTO Pessoa VALUES (6, "50172902701", "Marina Ciavatta");
INSERT INTO Palestrante VALUES (6, "Possui graduação em Sistemas da Informação pela Universidade Anhembi Morumbi e em Jornalismo pela Faculdade Cásper Líbero.", "Hekate, Inc." , "Marina Ciavatta (CPF: 501.729.027-01) participou como palestrante em Alerta de invasão: ataques e histórias de uma Engenheira Social, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Palestra VALUES (6, 1, 6, 1, '2020-09-25 20:00:00', "Alerta de invasão: ataques e histórias de uma Engenheira Social", "1 hora", "Interessados em segurança.");

INSERT INTO Lote VALUES (1, 1, 0.00, 500);
INSERT INTO Desconto VALUES (1, 0.00, 0.00);
INSERT INTO Preco VALUES (1, 100.0, 50.00, 50.00);

INSERT INTO Local VALUES (2, "https://kahoot.it/", 2000);

INSERT INTO Concurso VALUES (1, 1, 2, '2020-09-21 14:30:00', "Tempo Real de Operações: Transformando Dados em Resultado");
INSERT INTO Concurso VALUES (2, 1, 2, '2020-09-22 17:30:00', "Ciência do aprendizado");
INSERT INTO Concurso VALUES (3, 1, 2, '2020-09-23 17:30:00', "As 10 vulnerabilidades web mais comuns");
INSERT INTO Concurso VALUES (4, 1, 2, '2020-09-24 19:30:00', "Formei na USP e fui empreender!");
INSERT INTO Concurso VALUES (5, 1, 2, '2020-09-25 20:00:00', "Alerta de invasão: ataques e histórias de uma Engenheira Social");

INSERT INTO Regra VALUES (1, 1, "O competidor deverá entrar na sala do Kahoot! (https://kahoot.it/) com o PIN mostrado na live da twitch (https://www.twitch.tv/each_ssi) em no máximo 2 minutos ou até a sala lotar.");
INSERT INTO Regra VALUES (1, 2, "O competidor que terminar com a maior pontuação (primeiro lugar) e mandar alguma mensagem na live se identificando em 40 segundos ganha o prêmio.");
INSERT INTO Regra VALUES (1, 3, "Caso o ganhador não se identifique a tempo, a próxima pessoa com a maior pontuação ganhará o prêmio se responder em 40 segundos (e assim por diante).");

INSERT INTO Regra VALUES (2, 1, "O competidor deverá entrar na sala do Kahoot! (https://kahoot.it/) com o PIN mostrado na live da twitch (https://www.twitch.tv/each_ssi) em no máximo 2 minutos ou até a sala lotar.");
INSERT INTO Regra VALUES (2, 2, "O competidor que terminar com a maior pontuação (primeiro lugar) e mandar alguma mensagem na live se identificando em 40 segundos ganha o prêmio.");
INSERT INTO Regra VALUES (2, 3, "Caso o ganhador não se identifique a tempo, a próxima pessoa com a maior pontuação ganhará o prêmio se responder em 40 segundos (e assim por diante).");

INSERT INTO Regra VALUES (3, 1, "O competidor deverá entrar na sala do Kahoot! (https://kahoot.it/) com o PIN mostrado na live da twitch (https://www.twitch.tv/each_ssi) em no máximo 2 minutos ou até a sala lotar.");
INSERT INTO Regra VALUES (3, 2, "O competidor que terminar com a maior pontuação (primeiro lugar) e mandar alguma mensagem na live se identificando em 40 segundos ganha o prêmio.");
INSERT INTO Regra VALUES (3, 3, "Caso o ganhador não se identifique a tempo, a próxima pessoa com a maior pontuação ganhará o prêmio se responder em 40 segundos (e assim por diante).");

INSERT INTO Regra VALUES (4, 1, "O competidor deverá entrar na sala do Kahoot! (https://kahoot.it/) com o PIN mostrado na live da twitch (https://www.twitch.tv/each_ssi) em no máximo 2 minutos ou até a sala lotar.");
INSERT INTO Regra VALUES (4, 2, "O competidor que terminar com a maior pontuação (primeiro lugar) e mandar alguma mensagem na live se identificando em 40 segundos ganha o prêmio.");
INSERT INTO Regra VALUES (4, 3, "Caso o ganhador não se identifique a tempo, a próxima pessoa com a maior pontuação ganhará o prêmio se responder em 40 segundos (e assim por diante).");

INSERT INTO Regra VALUES (5, 1, "O competidor deverá entrar na sala do Kahoot! (https://kahoot.it/) com o PIN mostrado na live da twitch (https://www.twitch.tv/each_ssi) em no máximo 2 minutos ou até a sala lotar.");
INSERT INTO Regra VALUES (5, 2, "O competidor que terminar com a maior pontuação (primeiro lugar) e mandar alguma mensagem na live se identificando em 40 segundos ganha o prêmio.");
INSERT INTO Regra VALUES (5, 3, "Caso o ganhador não se identifique a tempo, a próxima pessoa com a maior pontuação ganhará o prêmio se responder em 40 segundos (e assim por diante).");

INSERT INTO Pessoa VALUES (7, "32010025530", "Giovana Giovaccini");
INSERT INTO Pessoa VALUES (8, "42070277501", "Larissa Oliveira");
INSERT INTO Pessoa VALUES (9, "13101902519", "Pedro Solano");
INSERT INTO Pessoa VALUES (10, "22013783010", "Francisca Rodrigues Sousa");
INSERT INTO Pessoa VALUES (11, "21131741122", "Eduardo Simão Lima");

INSERT INTO Ingresso VALUES (1, 1);
INSERT INTO Ingresso VALUES (2, 1);
INSERT INTO Ingresso VALUES (3, 1);
INSERT INTO Ingresso VALUES (4, 1);
INSERT INTO Ingresso VALUES (5, 1);

INSERT INTO Participante VALUES (7, 1, "Giovana Giovaccini (CPF: 320.100.255-30) foi participante do evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Participante VALUES (8, 2, "Larissa Oliveira (CPF: 420.702.775-01) foi participante do evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Participante VALUES (9, 3, "Pedro Solano (CPF: 131.019.025-19) foi participante do evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Participante VALUES (10, 4, "Francisca Rodrigues Sousa (CPF: 220.137.830-10) foi participante do evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Participante VALUES (11, 5, "Eduardo Simão Lima (CPF: 211.317.411-22) foi participante do evento Semana de Sistemas de Informação edição 5.");

INSERT INTO Pagamento VALUES (1, 0.00, "Ingresso do evento Semana de Sistemas de Informação edição 5.", "Recibo: foi pago o ingresso no valor de 0,00 reais.", "Nota fiscal: foi pago o valor de 0,00 reais.");
INSERT INTO Pagamento VALUES (2, 0.00, "Ingresso do evento Semana de Sistemas de Informação edição 5.", "Recibo: foi pago o ingresso no valor de 0,00 reais.", "Nota fiscal: foi pago o valor de 0,00 reais.");
INSERT INTO Pagamento VALUES (3, 0.00, "Ingresso do evento Semana de Sistemas de Informação edição 5.", "Recibo: foi pago o ingresso no valor de 0,00 reais.", "Nota fiscal: foi pago o valor de 0,00 reais.");
INSERT INTO Pagamento VALUES (4, 0.00, "Ingresso do evento Semana de Sistemas de Informação edição 5.", "Recibo: foi pago o ingresso no valor de 0,00 reais.", "Nota fiscal: foi pago o valor de 0,00 reais.");
INSERT INTO Pagamento VALUES (5, 0.00, "Ingresso do evento Semana de Sistemas de Informação edição 5.", "Recibo: foi pago o ingresso no valor de 0,00 reais.", "Nota fiscal: foi pago o valor de 0,00 reais.");

INSERT INTO Pagamento_Participante VALUES (7, 1);
INSERT INTO Pagamento_Participante VALUES (8, 2);
INSERT INTO Pagamento_Participante VALUES (9, 3);
INSERT INTO Pagamento_Participante VALUES (10, 4);
INSERT INTO Pagamento_Participante VALUES (11, 5);

INSERT INTO Recebedor VALUES ("94613522000102", 1, "DASI-USP", "Diretório Acadêmico de Sistemas de Informação da EACH-USP.");
INSERT INTO Recebedor VALUES ("94613522000102", 2, "DASI-USP", "Diretório Acadêmico de Sistemas de Informação da EACH-USP.");
INSERT INTO Recebedor VALUES ("94613522000102", 3, "DASI-USP", "Diretório Acadêmico de Sistemas de Informação da EACH-USP.");
INSERT INTO Recebedor VALUES ("94613522000102", 4, "DASI-USP", "Diretório Acadêmico de Sistemas de Informação da EACH-USP.");
INSERT INTO Recebedor VALUES ("94613522000102", 5, "DASI-USP", "Diretório Acadêmico de Sistemas de Informação da EACH-USP.");

INSERT INTO Competidor VALUES (1, 7, 1, "Giovana Giovaccini (CPF: 320.100.255-30) participou como competidor em Tempo Real de Operações: Transformando Dados em Resultado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (1, 8, 2, "Larissa Oliveira (CPF: 420.702.775-01) participou como competidor em Tempo Real de Operações: Transformando Dados em Resultado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (1, 9, 3, "Pedro Solano (CPF: 131.019.025-19) participou como competidor em Tempo Real de Operações: Transformando Dados em Resultado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (1, 10, 4, "Francisca Rodrigues Sousa (CPF: 220.137.830-10) participou como competidor em Tempo Real de Operações: Transformando Dados em Resultado, no evento Semana de Sistemas de Informação edição 5.");

INSERT INTO Competidor VALUES (2, 8, 1, "Larissa Oliveira (CPF: 420.702.775-01) participou como competidor em Ciência do aprendizado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (2, 7, 2, "Giovana Giovaccini (CPF: 320.100.255-30) participou como competidor em Ciência do aprendizado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (2, 11, 3, "Eduardo Simão Lima (CPF: 211.317.411-22) participou como competidor em Ciência do aprendizado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (2, 9, 4, "Pedro Solano (CPF: 131.019.025-19) participou como competidor em Ciência do aprendizado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (2, 10, 5, "Francisca Rodrigues Sousa (CPF: 220.137.830-10) participou como competidor em Ciência do aprendizado, no evento Semana de Sistemas de Informação edição 5.");

INSERT INTO Competidor VALUES (3, 10, 1, "Francisca Rodrigues Sousa (CPF: 220.137.830-10) participou como competidor em As 10 vulnerabilidades web mais comuns, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (3, 11, 2, "Eduardo Simão Lima (CPF: 211.317.411-22) participou como competidor em As 10 vulnerabilidades web mais comuns, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (3, 9, 3, "Pedro Solano (CPF: 131.019.025-19) participou como competidor em As 10 vulnerabilidades web mais comuns, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (3, 7, 4, "Giovana Giovaccini (CPF: 320.100.255-30) participou como competidor em As 10 vulnerabilidades web mais comuns, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (3, 8, 5, "Larissa Oliveira (CPF: 420.702.775-01) participou como competidor em As 10 vulnerabilidades web mais comuns, no evento Semana de Sistemas de Informação edição 5.");

INSERT INTO Competidor VALUES (4, 9, 1, "Pedro Solano (CPF: 131.019.025-19) participou como competidor em Formei na USP e fui empreender!, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (4, 11, 2, "Eduardo Simão Lima (CPF: 211.317.411-22) participou como competidor em Formei na USP e fui empreender!, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (4, 7, 3, "Giovana Giovaccini (CPF: 320.100.255-30) participou como competidor em Formei na USP e fui empreender!, no evento Semana de Sistemas de Informação edição 5.");

INSERT INTO Competidor VALUES (5, 11, 1, "Eduardo Simão Lima (CPF: 211.317.411-22) participou como competidor em Alerta de invasão: ataques e histórias de uma Engenheira Social, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (5, 8, 2, "Larissa Oliveira (CPF: 420.702.775-01) participou como competidor em Alerta de invasão: ataques e histórias de uma Engenheira Social, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (5, 10, 3, "Francisca Rodrigues Sousa (CPF: 220.137.830-10) participou como competidor em Alerta de invasão: ataques e histórias de uma Engenheira Social, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (5, 7, 4, "Giovana Giovaccini (CPF: 320.100.255-30) participou como competidor em Alerta de invasão: ataques e histórias de uma Engenheira Social, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Competidor VALUES (5, 9, 5, "Pedro Solano (CPF: 131.019.025-19) participou como competidor em Alerta de invasão: ataques e histórias de uma Engenheira Social, no evento Semana de Sistemas de Informação edição 5.");

INSERT INTO Entidade VALUES ("99848732000101", 1, "Alura", "Rua Vergueiro, 3185, cj 87 - Vila Mariana, São Paulo - SP, CEP 04101-300");
INSERT INTO Patrocinador VALUES ("99848732000101", 1, "Prata");
INSERT INTO Pagamento VALUES (6, 150.00, "Patrocínio no evento Semana de Sistemas de Informação edição 5.", "Recibo: foi pago o ingresso no valor de 150,00 reais.", "Nota fiscal: foi pago o valor de 150,00 reais.");
INSERT INTO Recebedor VALUES ("94613522000102", 6, "DASI-USP", "Diretório Acadêmico de Sistemas de Informação da EACH-USP.");
INSERT INTO Pagamento_Patrocinador VALUES ("99848732000101", 6);

INSERT INTO Entidade VALUES ("92598558000139", 1, "ClearSale", "Rua José de Oliveira Coutinho, 151 - Barra Funda, São Paulo - SP, CEP 01144-020");
INSERT INTO Patrocinador VALUES ("92598558000139", 1, "Ouro");
INSERT INTO Pagamento VALUES (7, 200.00, "Patrocínio no evento Semana de Sistemas de Informação edição 5.", "Recibo: foi pago o ingresso no valor de 200,00 reais.", "Nota fiscal: foi pago o valor de 200,00 reais.");
INSERT INTO Recebedor VALUES ("94613522000102", 7, "DASI-USP", "Diretório Acadêmico de Sistemas de Informação da EACH-USP.");
INSERT INTO Pagamento_Patrocinador VALUES ("92598558000139", 7);

INSERT INTO Entidade VALUES ("05615360000111", 1, "Intelie", "R. Helena, 140 - Vila Olímpia, São Paulo - SP, CEP 04552-050");
INSERT INTO Patrocinador VALUES ("05615360000111", 1, "Bronze");
INSERT INTO Pagamento VALUES (8, 100.00, "Patrocínio no evento Semana de Sistemas de Informação edição 5.", "Recibo: foi pago o ingresso no valor de 100,00 reais.", "Nota fiscal: foi pago o valor de 100,00 reais.");
INSERT INTO Recebedor VALUES ("94613522000102", 8, "DASI-USP", "Diretório Acadêmico de Sistemas de Informação da EACH-USP.");
INSERT INTO Pagamento_Patrocinador VALUES ("05615360000111", 8);

INSERT INTO Entidade VALUES ("14355786000174", 1, "BTG Pactual", "Av. Brigadeiro Faria Lima, 3.477 - Itaim Bibi, São Paulo – SP, CEP 04538-133");
INSERT INTO Patrocinador VALUES ("14355786000174", 1, "Bronze");
INSERT INTO Pagamento VALUES (9, 100.00, "Patrocínio no evento Semana de Sistemas de Informação edição 5.", "Recibo: foi pago o ingresso no valor de 100,00 reais.", "Nota fiscal: foi pago o valor de 100,00 reais.");
INSERT INTO Recebedor VALUES ("94613522000102", 9, "DASI-USP", "Diretório Acadêmico de Sistemas de Informação da EACH-USP.");
INSERT INTO Pagamento_Patrocinador VALUES ("14355786000174", 9);

INSERT INTO Comite_de_Programa VALUES (1);

INSERT INTO Pessoa VALUES (12, "65668347028", "Julia Neves");
INSERT INTO Pessoa VALUES (13, "91006067078", "Maria Amenezes Oliveira");
INSERT INTO Pessoa VALUES (14, "41739075080", "Jorge Solano");
INSERT INTO Pessoa VALUES (15, "14257648007", "Sophia Lissa Sousa");

INSERT INTO Membro_do_Comite VALUES (1, 11, "Giovana Giovaccini (CPF: 320.100.255-30) participou como membro do comitê de programa no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Membro_do_Comite VALUES (1, 12, "Julia Neves (CPF: 656.683.470-28) participou como membro do comitê de programa no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Membro_do_Comite VALUES (1, 13, "Maria Amenezes Oliveira (CPF: 910.060.670-78) participou como membro do comitê de programa no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Membro_do_Comite VALUES (1, 14, "Jorge Solano (CPF: 417.390.750-80) participou como membro do comitê de programa no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Membro_do_Comite VALUES (1, 15, "Sophia Lissa Sousa (CPF: 142.576.480-07) participou como membro do comitê de programa no evento Semana de Sistemas de Informação edição 5.");

INSERT INTO Juiz VALUES (12, 1, "Julia Neves (CPF: 656.683.470-28) participou como juiz em Tempo Real de Operações: Transformando Dados em Resultado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Juiz VALUES (12, 2, "Julia Neves (CPF: 656.683.470-28) participou como juiz em Ciência do aprendizado, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Juiz VALUES (12, 3, "Julia Neves (CPF: 656.683.470-28) participou como juiz em As 10 vulnerabilidades web mais comuns, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Juiz VALUES (12, 4, "Julia Neves (CPF: 656.683.470-28) participou como juiz em Formei na USP e fui empreender!, no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Juiz VALUES (12, 5, "Julia Neves (CPF: 656.683.470-28) participou como juiz em Alerta de invasão: ataques e histórias de uma Engenheira Social, no evento Semana de Sistemas de Informação edição 5.");

INSERT INTO Staff VALUES (1, 13, "Maria Amenezes Oliveira (CPF: 910.060.670-78) participou como staff no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Staff VALUES (1, 14, "Jorge Solano (CPF: 417.390.750-80) participou como staff no evento Semana de Sistemas de Informação edição 5.");
INSERT INTO Staff VALUES (1, 15, "Sophia Lissa Sousa (CPF: 142.576.480-07) participou como staff no evento Semana de Sistemas de Informação edição 5.");

INSERT INTO Responsavel VALUES (7, "94613522000102");
INSERT INTO Responsavel VALUES (8, "99848732000101");
INSERT INTO Responsavel VALUES (10, "92598558000139");
INSERT INTO Responsavel VALUES (12, "05615360000111");
INSERT INTO Responsavel VALUES (14, "14355786000174");

INSERT INTO Premio VALUES (1, "150, 00 reais no Ifood", 1);
INSERT INTO Premio VALUES (2, "50, 00 reais no Ifood", 1);
INSERT INTO Premio VALUES (3, "100, 00 reais no Ifood", 1);
INSERT INTO Premio VALUES (4, "150, 00 reais no Ifood", 1);
INSERT INTO Premio VALUES (5, "100, 00 reais no Ifood", 1);

INSERT INTO Pagamento VALUES (10, 550.00, "Prêmios dos concursos no evento Semana de Sistemas de Informação edição 5.", "Recibo: foi pago os cupons do Ifood no valor de 550,00 reais.", "Nota fiscal: foi pago o valor de 550,00 reais.");
INSERT INTO Recebedor VALUES ("43784053000153", 10, "Ifood", "Serviço de delivery de refeições.");
INSERT INTO Pagamento_Evento VALUES (1, 10);

/** Evento 2: **/

INSERT INTO Evento VALUES (2, "Roadsec", 10, "Evento de hacking e seguranca da informacao");

INSERT INTO Local VALUES (3, "Av. Francisco Matarazzo, 694 - Barra Funda, Sao Paulo - SP, 05001-000", 3200);

INSERT INTO Entidade VALUES ("12564872569538", 2, "Flipside", "Av. Angelica, 2529 - Bela Vista, Sao Paulo - SP, 01227-200");
INSERT INTO Realizador VALUES ("12564872569538", 2);
INSERT INTO Promotor VALUES ("12564872569538", 2);

INSERT INTO Facebook VALUES ("https://www.facebook.com/roadsec/", "12564872569538");
INSERT INTO Publicacao_Facebook VALUES (4, "https://www.facebook.com/roadsec/", 200, 100, 5, 7, 0, 9, 0, 5);
INSERT INTO Publicacao_Facebook VALUES (5, "https://www.facebook.com/roadsec/", 250, 130, 60, 51, 0, 2, 0, 1);
INSERT INTO Publicacao_Facebook VALUES (6, "https://www.facebook.com/roadsec/", 130, 60, 33, 10, 0, 10, 16, 7);

INSERT INTO Instagram VALUES ("@roadsec", "12564872569538");
INSERT INTO Publicacao_Instagram VALUES (3, "@roadsec", 200, 150);
INSERT INTO Publicacao_Instagram VALUES (4, "@roadsec", 125, 49);
INSERT INTO Publicacao_Instagram VALUES (5, "@roadsec", 98, 44);

INSERT INTO Local VALUES (4, "Palco principal", 600);


INSERT INTO Pessoa VALUES (16, "21053815026", "Marina Souza Barbosa");
INSERT INTO Palestrante VALUES (16, "Engenheira social e pentester fisica", "Tempest", "Marina Souza Barbosa (CPF: 210.538.150-26) participou como palestrante em Como aplicar Engenharia Social na pratica?, no evento Roadsec edição 10.");
INSERT INTO Palestra VALUES (7, 2, 16, 4, '2020-10-12 08:00:00', "Como aplicar Engenharia Social na pratica?", "1 hora", "Interessados em engenharia social.");

INSERT INTO Local VALUES (5, "Palco Adda Lovelace", 250);

INSERT INTO Pessoa VALUES (17, "27246589066", "Luisa Almeida dos Santos");
INSERT INTO Palestrante VALUES (17, "Co-fundadora da empresa FlipFlop", "FlipFlop", "Luisa Almeida dos Santos (CPF: 272.465.890-66) participou como palestrante em A importancia da seguranca da informacao na producao de jogos, no evento Roadsec edição 10.");
INSERT INTO Palestra VALUES (8, 2, 17, 5, '2020-10-12 08:00:00', "A importancia da seguranca da informacao na producao de jogos", "1 hora", "Interessados em desenvolvimento de jogos");

INSERT INTO Pessoa VALUES (18, "33384631030", "Gilmar Esteves");
INSERT INTO Palestrante VALUES (18, "Head of security na ZUP IT", "Zup IT", "Gilmar Esteves (CPF: 333.846.310-30) participou como palestrante em Desafios da seguranca da informacao no seculo 21, no evento Roadsec edição 10.");
INSERT INTO Palestra VALUES (9, 2, 18, 4, '2020-10-12 09:30:00', "Desafios da seguranca da informacao no seculo 21", "1 hora", "Interessados em segurança da informacao");

INSERT INTO Pessoa VALUES (19, "03201720070", "Anderson Ramos");
INSERT INTO Palestrante VALUES (19, "Diretor e fundador da Flipside", "Flipside" , "Anderson Ramos (CPF: 032.017.200-70) participou como palestrante em Como iniciar na carreira de pentester, no evento Roadsec edição 10.");
INSERT INTO Palestra VALUES (10, 2, 19, 5, '2020-10-12 09:30:00', "Como iniciar na carreira de pentester", "2 horas", "Principiantes na area de segurança da informacao");


INSERT INTO Lote VALUES (1, 2, 98.00, 500);
INSERT INTO Desconto VALUES (2, 50.00, 0.00);

INSERT INTO Lote VALUES (2, 2, 150.00, 700);

INSERT INTO Lote VALUES (3, 2, 200.00, 1000);

INSERT INTO Lote VALUES (4, 2, 230.00, 100);

INSERT INTO Preco VALUES (2, 1000.0, 500.00, 250.00);

INSERT INTO Local VALUES (6, "Camarote da audioclub", 50);

INSERT INTO Concurso VALUES (6, 2, 6, '2020-10-12 08:00:00', "Final do Hackaflag");

INSERT INTO Regra VALUES (6, 1, "A competicao deve ser realizada individualmente, sendo proibida a comunicacao com pessoas de fora da competicao.");
INSERT INTO Regra VALUES (6, 2, "Ataques a infraestrutura da competicao sao proibidos e acarretam em eliminacao.");
INSERT INTO Regra VALUES (6, 3, "O ganhador sera o competidor que conseguir obter o maior numero de pontos no tempo estabelecido para a competicao.");
INSERT INTO Regra VALUES (6, 4, "O placar da competicao deixara de ser exibido na ultima hora da competicao, com o vencedor so sendo anunciado ao fim da mesma.");

INSERT INTO Pessoa VALUES (20, "96183055034", "Roberto Gomes Pereira de Castro");
INSERT INTO Pessoa VALUES (21, "32459783086", "Clara Luiza dos Santos");
INSERT INTO Pessoa VALUES (22, "17917251047", "Maria Aparecida do Carmo");
INSERT INTO Pessoa VALUES (23, "09682379083", "Pedro Canoas da Silva");
INSERT INTO Pessoa VALUES (24, "34261584000", "Iuri Jorge de Castro");

INSERT INTO Ingresso VALUES (1, 2);
INSERT INTO Ingresso VALUES (2, 2);
INSERT INTO Ingresso VALUES (3, 2);
INSERT INTO Ingresso VALUES (4, 2);
INSERT INTO Ingresso VALUES (5, 2);
INSERT INTO Ingresso VALUES (7, 2);
INSERT INTO Ingresso VALUES (8, 2);

INSERT INTO Competidor VALUES (6, 20, 1, "Roberto Gomes Pereira de Castro (CPF: 961.830.550-34) participou como competidor na final do Hackaflag, no evento Roadsec edição 10.");
INSERT INTO Competidor VALUES (6, 21, 2, "Clara Luiza dos Santos (CPF: 324.597.830-86) participou como competidor na final do Hackaflag, no evento Roadsec edição 10.");
INSERT INTO Competidor VALUES (6, 23, 3, "Pedro Canoas da Silva (CPF: 096.823.790-83) participou como competidor na final do Hackaflag, no evento Roadsec edição 10.");

INSERT INTO Entidade VALUES ("40214110000170", 2, "Itau", "Pca Alfredo Egydio Souza Aranha, 100, To(Rua Boa Vista, 176)");
INSERT INTO Pagamento VALUES (11, 15000.00, "Patrocínio no evento Roadsec edição 5.", "Recibo: foi pago o patrocinio no valor de 15000,00 reais.", "Nota fiscal: foi pago o valor de 15000,00 reais.");
INSERT INTO Recebedor VALUES ("12564872569538", 11, "Flipside", "Empresa organizadora do evento.");
INSERT INTO Patrocinador VALUES ("40214110000170", 2, "Ouro");
INSERT INTO Entidade VALUES ("10380469000157", 2, "Tempest", "Edf. Lavandisca 777 Corporate, Av. Lavandisca, 777 - Moema, São Paulo - SP, 04515-011");

INSERT INTO Comite_de_Programa VALUES (2);

INSERT INTO Membro_do_Comite VALUES (2, 1, "Augusto Borella Hougaz (CPF: 501.411.041-41) participou como membro do comitê de programa no evento Roadsec edição 10.");
INSERT INTO Membro_do_Comite VALUES (2, 19, "Anderson Ramos (CPF: 032.017.200-70)  participou como membro do comitê de programa no evento Roadsec edição 10.");
INSERT INTO Membro_do_Comite VALUES (2, 24, "Iuri Jorge de Castro (CPF: 342.615.840-00)  participou como membro do comitê de programa no evento Roadsec edição 10.");

INSERT INTO Juiz VALUES (15, 6, "Sophia Lissa Sousa (CPF: 142.576.480-07) participou como juiz na final do Hackaflag, no evento Roadsec edição 10.");
INSERT INTO Juiz VALUES (8, 6, "Larissa Oliveira (CPF: 420.702.775-01) participou como juiz na final do Hackaflag, no evento Roadsec edição 10.");

INSERT INTO Staff VALUES (2, 21, "Clara Luiza dos Santos (CPF: 324.597.830-86) participou como staff no evento Roadsec edição 10.");
INSERT INTO Staff VALUES (2, 9, "Pedro Solano (CPF: 131.019.025-19) participou como staff no evento Roadsec edição 10.");
INSERT INTO Staff VALUES (2, 16, "Marina Souza Barbosa (CPF: 210.538.150-26) participou como staff no evento Roadsec edição 10.");

INSERT INTO Premio VALUES (6, "Viagem para las vegas", 1);

INSERT INTO Pagamento VALUES (12, 10000.00, "Prêmios dos concursos no evento Roadsec edição 10.", "Recibo: foi pago em prêmios no valor de 10000,00 reais.", "Nota fiscal: foi pago o valor de 10000,00 reais.");
INSERT INTO Recebedor VALUES ("47401775000132", 12, "CVC", "Agencia de viagens");
INSERT INTO Pagamento_Evento VALUES (2, 12);

INSERT INTO Local VALUES (7, "Pátio externo Audioclub", 100);

INSERT INTO Atividades_sociais VALUES (1, 2, 7, '2020-10-12 08:00:00',"Laboratório de ciências com o lab das minas", 50.00);
INSERT INTO Atividades_sociais VALUES (2, 2, 7, '2020-10-12 09:00:00',"Aula de robótiva com o lab Makers", 50.00);
INSERT INTO Atividades_sociais VALUES (3, 2, 7, '2020-10-12 10:00:00',"Hand-on com o WoMakersCode", 25.00);
INSERT INTO Atividades_sociais VALUES (4, 2, 7, '2020-10-12 11:00:00',"Concurso de just dance do grupo PyGirls", 5.00);
INSERT INTO Atividades_sociais VALUES (5, 2, 7, '2020-10-12 12:00:00',"Oficina de lock pick da garagem hacker club", 10.00);

INSERT INTO Local VALUES (8, "Pátio interno para stands", 200);

INSERT INTO Stand_de_evento VALUES (1, 8);
INSERT INTO Entidade_has_stand_de_evento VALUES (1, '2020-10-12 08:00:00',"40214110000170", 2);

INSERT INTO Stand_de_evento VALUES (2, 8);
INSERT INTO Entidade_has_stand_de_evento VALUES (2, '2020-10-12 08:00:00',"12564872569538", 2);

INSERT INTO Entidade_has_stand_de_evento VALUES (2, '2020-10-12 11:00:00',"40214110000170", 2);

INSERT INTO Stand_de_evento VALUES (3, 8);
INSERT INTO Entidade_has_stand_de_evento VALUES (3, '2020-10-12 08:00:00',"10380469000157", 2);

INSERT INTO Entidade VALUES ("53315339000143", 2, "ESecurity", "Av. Paulista, 1439 - Bela Vista, São Paulo - SP, 01311-200");
INSERT INTO Stand_de_evento VALUES (4, 8);
INSERT INTO Entidade_has_stand_de_evento VALUES (4, '2020-10-12 08:00:00',"53315339000143", 2);

INSERT INTO Entidade VALUES ("44500483000169", 2, "NovaTec", "R. Luís Antônio dos Santos, 110 - Santa Terezinha, São Paulo - SP, 02460-000");
INSERT INTO Stand_de_evento VALUES (5, 8);
INSERT INTO Entidade_has_stand_de_evento VALUES (5, '2020-10-12 08:00:00',"44500483000169", 2);

INSERT INTO Local VALUES (9, "Palco de hands-on", 200);

INSERT INTO Tutorial VALUES (1, 2, '2020-10-12 08:00:00', 9, "Análise estática de código usando horusec", "1 hora", "Analistas de segurança da informação", 50.00);
INSERT INTO Tutorial VALUES (2, 2, '2020-10-12 09:00:00', 9, "Como hackear um carro?", "1 hora", "Analistas de segurança da informação", 200.00);
INSERT INTO Tutorial VALUES (3, 2, '2020-10-12 10:00:00', 9, "Implementação correta da LGPD", "30 minutos", "Analistas de segurança da informação", 50.00);
INSERT INTO Tutorial VALUES (4, 2, '2020-10-12 10:30:00', 9, "Criando um currículo de sucesso", "30 minutos", "Estudantes em busca do primeiro emprego", 20.00);
INSERT INTO Tutorial VALUES (5, 2, '2020-10-12 11:00:00', 9, "Engenharia reversa em malwares", "1 hora", "Analistas de segurança da informação", 100.00);

INSERT INTO Ministrante VALUES (1, 17, "Luisa Almeida dos Santos (CPF: 272.465.890-66) participou como ministrante no tutorial Análise estática de código usando horusec, no evento Roadsec edição 10.");
INSERT INTO Ministrante VALUES (2, 1, "Augusto Borella Hougaz (CPF: 501.411.041-41) participou como ministrante no tutorial Como hackear um carro?, no evento Roadsec edição 10.");
INSERT INTO Ministrante VALUES (3, 5, "Eduardo Tardelli (CPF: 111.711.027-07) participou como ministrante no tutorial Implementação correta da LGPD, no evento Roadsec edição 10.");
INSERT INTO Ministrante VALUES (4, 9, "Clara Luiza dos Santos (CPF: 324.597.830-86) participou como ministrante no tutorial Criando um currículo de sucesso, no evento Roadsec edição 10.");
INSERT INTO Ministrante VALUES (5, 20, "Roberto Gomes Pereira de Castro (CPF: 961.830.550-34) participou como ministrante no tutorial Engenharia reversa em malwares, no evento Roadsec edição 10.");

INSERT INTO Equipamentos VALUES ("Projetor", 9, 1);
INSERT INTO Equipamentos VALUES ("Kit de lock pik", 7, 30);
INSERT INTO Equipamentos VALUES ("Mesas", 7, 10);
INSERT INTO Equipamentos VALUES ("Mesas", 9, 5);
INSERT INTO Equipamentos VALUES ("Notebook", 7, 5);

INSERT INTO Organizador VALUES (2, 19, "Anderson Ramos (CPF: 032.017.200-70) participou como Organizador no evento Roadsec edição 10.");
INSERT INTO Organizador VALUES (2, 7, "Giovana Giovaccini (CPF: 320.100.255-30) participou como Organizador no evento Roadsec edição 10.");


/** Evento 3: **/

INSERT INTO Evento VALUES (3, "Simpósio de Sistemas de Informação", 8, "Convenção de pesquisadores de Sistemas de Informação");

INSERT INTO Local VALUES (10, "Butanta, São Paulo - SP", 5000);

INSERT INTO Entidade VALUES ("18632495000137", 3, "USP", "Butanta, São Paulo - SP");
INSERT INTO Realizador VALUES ("18632495000137", 3);
INSERT INTO Promotor VALUES ("18632495000137", 3);

INSERT INTO Facebook VALUES ("https://www.facebook.com/SimposioSI/", "18632495000137");
INSERT INTO Publicacao_Facebook VALUES (7, "https://www.facebook.com/SimposioSI/", 170, 60, 5, 7, 10, 9, 0, 5);

INSERT INTO Instagram VALUES ("@SimposioSI", "18632495000137");
INSERT INTO Publicacao_Instagram VALUES (6, "@SimposioSI", 500, 463);

INSERT INTO Apresentacao_de_artigos VALUES (1, 3, "Inteligencia Artificial", 1);
INSERT INTO Artigo VALUES (1, 1, "Aplicações da Inteligencia Artificial na medicina");
INSERT INTO Pessoa VALUES (25, "04133810058", "Patrícia Loppes da Silva");
INSERT INTO Autor VALUES (25, 1);
INSERT INTO Local VALUES (11, "Auditório do prédio de Ciências da Computação", 300);
INSERT INTO Sessao VALUES (1, 1, '2021-06-03 09:00:00', 11, "Aplicações da Inteligencia Artificial na medicina");
INSERT INTO Responsavel_pela_sessao VALUES (1, 19, "Anderson Ramos (CPF: 032.017.200-70) foi responsável pela sessão Aplicações da Inteligencia Artificial na medicina no evento Simpósio de Sistemas de Informação edição 8.");

INSERT INTO Apresentacao_de_artigos VALUES (2, 3, "Implementação de automações na análise de código", 1);
INSERT INTO Artigo VALUES (2, 2, "Implementação de automações na análise de código");
INSERT INTO Pessoa VALUES (26, "05265122028", "Marcos Oliveira");
INSERT INTO Autor VALUES (26, 2);
INSERT INTO Local VALUES (12, "Auditório do prédio de Engenharia", 350);
INSERT INTO Sessao VALUES (1, 2, '2021-06-03 09:00:00', 12, "Implementação de automações na análise de código");
INSERT INTO Responsavel_pela_sessao VALUES (1, 6, "Larissa Oliveira (CPF: 420.702.775-01) foi responsável pela sessão Implementação de automações na análise de código no evento Simpósio de Sistemas de Informação edição 8.");

INSERT INTO Apresentacao_de_artigos VALUES (3, 3, "Análise de dados", 1);
INSERT INTO Artigo VALUES (3, 3, "Big data aplicado ao mercado financeiro");
INSERT INTO Pessoa VALUES (27, "98881393042", "Luisa Aparecida");
INSERT INTO Autor VALUES (27, 3);
INSERT INTO Sessao VALUES (1, 3, '2021-06-03 10:00:00', 11, "Big data aplicado ao mercado financeiro");
INSERT INTO Responsavel_pela_sessao VALUES (1, 9, "Pedro Solano (CPF: 131.019.025-19) foi responsável pela sessão Big data aplicado ao mercado financeiro no evento Simpósio de Sistemas de Informação edição 8.");

INSERT INTO Apresentacao_de_artigos VALUES (4, 3, "Teoria da computação", 1);
INSERT INTO Artigo VALUES (4, 4, "O futuro dos processadores");
INSERT INTO Autor VALUES (15, 4);
INSERT INTO Sessao VALUES (1, 4, '2021-06-03 10:00:00', 12, "O futuro dos processadores");
INSERT INTO Responsavel_pela_sessao VALUES (1, 17, "Luisa Almeida dos Santos (CPF: 272.465.890-66) foi responsável pela sessão O futuro dos processadores no evento Simpósio de Sistemas de Informação edição 8.");

INSERT INTO Apresentacao_de_artigos VALUES (5, 3, "Banco de dados", 1);
INSERT INTO Artigo VALUES (5, 5, "O impacto da LGPD na manutenção de bancos de dados");
INSERT INTO Autor VALUES (15, 5);
INSERT INTO Sessao VALUES (1, 5, '2021-06-03 11:10:00', 11, "O impacto da LGPD na manutenção de bancos de dados");
INSERT INTO Responsavel_pela_sessao VALUES (1, 24, "Iuri Jorge de Castro (CPF: 342.615.840-00) foi responsável pela sessão O impacto da LGPD na manutenção de bancos de dados no evento Simpósio de Sistemas de Informação edição 8.");

INSERT INTO Preco VALUES (3, 1500.0, 500.00, 500.00);
INSERT INTO Desconto VALUES (3, 50.00, 50.00);
INSERT INTO Lote VALUES (1, 3, 100.00, 450);

INSERT INTO Comite_de_Programa VALUES (3);
INSERT INTO Membro_do_Comite VALUES (3, 9, "Pedro Solano (CPF: 131.019.025-19) participou como membro do comitê de programa no evento Simpósio de Sistemas de Informação edição 8.");
INSERT INTO Membro_do_Comite VALUES (3, 24, "Iuri Jorge de Castro (CPF: 342.615.840-00)  participou como membro do comitê de programa no evento Simpósio de Sistemas de Informação edição 8.");

INSERT INTO Entidade VALUES ("47614401000103", 3, "Amazon", "R. Domingos Jorge, 493 - Vila Socorro, São Paulo - SP, 04570-000");
INSERT INTO Pagamento VALUES (13, 11500.00, "Patrocínio no evento Simpósio de Sistemas de Informação edição edição 8.", "Recibo: foi pago o patrocinio no valor de 11500,00 reais.", "Nota fiscal: foi pago o valor de 11500,00 reais.");
INSERT INTO Recebedor VALUES ("18632495000137", 13, "USP", "Empresa organizadora do evento.");
INSERT INTO Patrocinador VALUES ("47614401000103", 3, "Ouro");
INSERT INTO Pagamento_patrocinador VALUES ("47614401000103", 13);

INSERT INTO Pagamento VALUES (14, 250.00, "Pagamento do coffe breack oferecido no evento Simpósio de Sistemas de Informação edição edição 8.", "Recibo: foi pago o patrocinio no valor de 250,00 reais.", "Nota fiscal: foi pago o valor de 250,00 reais.");
INSERT INTO Pagamento_evento VALUES (3, 14);

INSERT INTO Pagamento VALUES (15, 200.00, "Pagamento de transportes no evento Simpósio de Sistemas de Informação edição edição 8.", "Recibo: foi pago o patrocinio no valor de 200,00 reais.", "Nota fiscal: foi pago o valor de 200,00 reais.");
INSERT INTO Pagamento_evento VALUES (3, 15);

INSERT INTO Pagamento VALUES (16, 200.00, "Pagamento de materiais do workshop no evento Simpósio de Sistemas de Informação edição edição 8.", "Recibo: foi pago o patrocinio no valor de 200,00 reais.", "Nota fiscal: foi pago o valor de 200,00 reais.");
INSERT INTO Pagamento_evento VALUES (3, 16);

INSERT INTO Local VALUES (13, "Sala A101 do prédio de Engenharia da Computação", 50);
INSERT INTO Local VALUES (14, "Sala A102 do prédio de Engenharia da Computação", 50);

INSERT INTO Workshop VALUES (1, 3, '2021-06-03 09:00:00', 13, "Codificando um banco de dados seguro e eficiente", "30 minutos", "Estudantes de cursos relacionados a Computação", 25.00);
INSERT INTO Workshop VALUES (2, 3, '2021-06-03 09:00:00', 14, "Construindo uma rede de computadores do zero", "30 minutos", "Estudantes de cursos relacionados a Computação", 25.00);
INSERT INTO Workshop VALUES (3, 3, '2021-06-03 10:00:00', 13, "Técnicas de alálise de dados", "30 minutos", "Estudantes de cursos relacionados a Computação", 25.00);
INSERT INTO Workshop VALUES (4, 3, '2021-06-03 10:00:00', 14, "Boas práticas de programação", "30 minutos", "Estudantes de cursos relacionados a Computação", 25.00);
INSERT INTO Workshop VALUES (5, 3, '2021-06-03 11:00:00', 14, "Aplicações dos métos estatísticos no desenvolvimento de software", "30 minutos", "Estudantes de cursos relacionados a Computação", 25.00);

/** Evento 4: **/

INSERT INTO Evento VALUES (4, "Congresso de Tecnologia", 3, "Convenção de pesquisadores e estudantes de cursos correlatos ás ciências exatas");

INSERT INTO Local VALUES (15, "Cidade Universitária Zeferino Vaz - Barão Geraldo, Campinas - SP, 13083-970", 5500);

INSERT INTO Entidade VALUES ("90845416000101", 4, "UNICAMP", "Cidade Universitária Zeferino Vaz - Barão Geraldo, Campinas - SP, 13083-970");
INSERT INTO Realizador VALUES ("90845416000101", 4);
INSERT INTO Promotor VALUES ("90845416000101", 4);

INSERT INTO Facebook VALUES ("https://www.facebook.com/CongressoDeTecnologia/", "90845416000101");
INSERT INTO Publicacao_Facebook VALUES (8, "https://www.facebook.com/CongressoDeTecnologia/", 50, 15, 10, 0, 0, 9, 0, 0);

INSERT INTO Instagram VALUES ("@CongressoDeTec", "90845416000101");
INSERT INTO Publicacao_Instagram VALUES (7, "@CongressoDeTec", 113, 67);

INSERT INTO Preco VALUES (4, 500.0, 250.00, 250.00);
INSERT INTO Desconto VALUES (4, 25.00, 25.00);
INSERT INTO Lote VALUES (1, 4, 50.00, 50);

INSERT INTO Pessoa VALUES (28, "49451892001", "Mario Augusto dos Reis");
INSERT INTO Pessoa VALUES (29, "41534162070", "Maressa Aparecida de Souza");

INSERT INTO Comite_de_Programa VALUES (4);
INSERT INTO Membro_do_Comite VALUES (4, 28, "Mario Augusto dos Reis (CPF: 494.518.920-01) participou como membro do comitê de programa no evento Congresso de Tecnologia edição 3.");
INSERT INTO Membro_do_Comite VALUES (4, 29, "Maressa Aparecida de Souza (CPF: 415.341.620-70)  participou como membro do comitê de programa no evento Congresso de Tecnologia edição 3.");

INSERT INTO Organizador VALUES (4, 28, "Mario Augusto dos Reis (CPF: 494.518.920-01) participou como Organizador no evento Congresso de Tecnologia edição 3.");
INSERT INTO Organizador VALUES (4, 29, "Maressa Aparecida de Souza (CPF: 415.341.620-70) participou como Organizador no evento Congresso de Tecnologia edição 3.");
INSERT INTO Organizador VALUES (4, 7, "Giovana Giovaccini (CPF: 320.100.255-30) participou como Organizador no evento Congresso de Tecnologia edição 3.");

INSERT INTO Local VALUES (16, "Sala de reuniões 1", 20);

INSERT INTO Reuniao VALUES (1, 4, 16, '2021-08-05 09:00:00', "O futuro da tecnologia" );
INSERT INTO Integrante VALUES (1, 24, "Iuri Jorge de Castro (CPF: 342.615.840-00) participou como Integrante da reunião O futuro da tecnologia no evento Congresso de Tecnologia edição 3.");
INSERT INTO Integrante VALUES (1, 19, "Anderson Ramos (CPF: 032.017.200-70) participou como Integrante da reunião O futuro da tecnologia no evento Congresso de Tecnologia edição 3.");
INSERT INTO Integrante VALUES (1, 20, "Roberto Gomes Pereira de Castro (CPF: 961.830.550-34) participou como Integrante da reunião O futuro da tecnologia no evento Congresso de Tecnologia edição 3.");

INSERT INTO Reuniao VALUES (2, 4, 16, '2021-08-05 10:00:00', "Impacto da tecnologia no ensino" );
INSERT INTO Integrante VALUES (2, 24, "Iuri Jorge de Castro (CPF: 342.615.840-00) participou como Integrante da reunião O futuro da tecnologia no evento Impacto da tecnologia no ensino edição 3.");
INSERT INTO Integrante VALUES (2, 29, "Maressa Aparecida de Souza (CPF: 415.341.620-70) participou como Integrante da reunião O futuro da tecnologia no evento Impacto da tecnologia no ensino edição 3.");
INSERT INTO Integrante VALUES (2, 20, "Roberto Gomes Pereira de Castro (CPF: 961.830.550-34) participou como Integrante da reunião O futuro da tecnologia no evento Impacto da tecnologia no ensino edição 3.");

INSERT INTO Reuniao VALUES (3, 4, 16, '2021-08-05 11:00:00', "Pesquisas atuais em computação" );
INSERT INTO Integrante VALUES (3, 23, "Pedro Canoas da Silva (CPF: 096.823.790-83) participou como Integrante da reunião O futuro da tecnologia no evento Pesquisas atuais em computação edição 3.");
INSERT INTO Integrante VALUES (3, 29, "Maressa Aparecida de Souza (CPF: 415.341.620-70) participou como Integrante da reunião O futuro da tecnologia no evento Pesquisas atuais em computação edição 3.");
INSERT INTO Integrante VALUES (3, 28, "Mario Augusto dos Reis (CPF: 494.518.920-01) participou como Integrante da reunião O futuro da tecnologia no evento Pesquisas atuais em computação edição 3.");

/** Evento 5: **/

INSERT INTO Evento VALUES (5, "Newton 5", 1, "Convenção de pesquisadores do curso de física");

INSERT INTO Local VALUES (17, "Av. Trab. São Carlense, 400 - Parque Arnold Schimidt, São Carlos - SP, 13566-590", 5600);

INSERT INTO Entidade VALUES ("83306840000104", 5, "USP - São Carlos", "Av. Trab. São Carlense, 400 - Parque Arnold Schimidt, São Carlos - SP, 13566-590");
INSERT INTO Realizador VALUES ("83306840000104", 5);
INSERT INTO Promotor VALUES ("83306840000104", 5);

INSERT INTO Pagamento VALUES (17, 350.00, "Contas de luz, água, etc., o necessário para a universidade funcionar nesse dia.", "Recibo: foi pago o patrocinio no valor de 350,00 reais.", "Nota fiscal: foi pago o valor de 350,00 reais.");
INSERT INTO Recebedor VALUES ("83306840000104", 17, "USP - São Carlos", "Universidade de São Paulo - Campus São Carlos");
INSERT INTO Patrocinador VALUES ("83306840000104", 5, "Ouro");
INSERT INTO Pagamento_patrocinador VALUES ("83306840000104", 17);

INSERT INTO Facebook VALUES ("https://www.facebook.com/uspsaocarlos/", "83306840000104");
INSERT INTO Publicacao_Facebook VALUES (9, "https://www.facebook.com/uspsaocarlos/", 50, 13, 27, 0, 0, 2, 0, 1);

INSERT INTO Instagram VALUES ("@usp.saocarlos", "83306840000104");
INSERT INTO Publicacao_Instagram VALUES (8, "@usp.saocarlos", 200, 37);

INSERT INTO Preco VALUES (5, 250.0, 70.00, 30.00);
INSERT INTO Desconto VALUES (5, 0.00, 0.00);
INSERT INTO Lote VALUES (1, 5, 0.00, 100);

INSERT INTO Comite_de_Programa VALUES (5);
INSERT INTO Membro_do_Comite VALUES (5, 8, "Larissa Oliveira (CPF: 420.702.775-01) participou como membro do comitê de programa no evento Newton 5 edição 1.");
INSERT INTO Membro_do_Comite VALUES (5, 9, "Pedro Solano (CPF: 131.019.025-19)  participou como membro do comitê de programa no evento Newton 5 edição 1.");

INSERT INTO Local VALUES (18, "Sala de aula 1", 50);

INSERT INTO Reuniao VALUES (1, 5, 16, '2021-07-07 08:00:00', "Física aplicada à computação" );
INSERT INTO Integrante VALUES (1, 17, "Luisa Almeida dos Santos (CPF: 272.465.890-66) participou como Integrante da reunião Física aplicada à computação, no evento Newton 5 edição 1.");
INSERT INTO Integrante VALUES (1, 5, "Eduardo Tardelli (CPF: 111.711.027-07) participou como Integrante da reunião Física aplicada à computação, no evento Newton 5 edição 1.");
INSERT INTO Integrante VALUES (1, 9, "Clara Luiza dos Santos (CPF: 324.597.830-86) participou como Integrante da reunião Física aplicada à computação, no evento Newton 5 edição 1.");

INSERT INTO Reuniao VALUES (2, 5, 16, '2021-07-07 10:00:00', "Física aplicada à medicina" );
INSERT INTO Integrante VALUES (2, 8, "Larissa Oliveira (CPF: 420.702.775-01) participou como Integrante da reunião Física aplicada à medicina, no evento Newton 5 edição 1.");
INSERT INTO Integrante VALUES (2, 23, "Pedro Canoas da Silva (CPF: 096.823.790-83) participou como Integrante da reunião Física aplicada à medicina, no evento Newton 5 edição 1.");

INSERT INTO Reuniao VALUES (3, 5, 16, '2021-07-07 13:00:00', "Pesquisas atuais em física" );
INSERT INTO Integrante VALUES (2, 19, "Anderson Ramos (CPF: 032.017.200-70) participou como Integrante da reunião Pesquisas atuais em física, no evento Newton 5 no ensino edição 1.");
INSERT INTO Integrante VALUES (3, 7, "Giovana Giovaccini (CPF: 320.100.255-30) participou como Integrante da reunião Pesquisas atuais em física, no evento Newton 5 edição 1.");
