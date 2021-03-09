/*Depois do 1° teste*/
DELETE FROM Promotor WHERE Entidade_cnpj = '12564872569538';
DELETE FROM Realizador WHERE Entidade_cnpj = '83306840000104';

/*Este é o 2° teste*/
INSERT INTO Promotor VALUES ('44500483000169', '2');
INSERT INTO Entidade VALUES ('90845416000101', '5', 'UNICAMP', 'Cidade Universitária Zeferino Vaz - Barão Geraldo, Campinas - SP, 13083-970');
INSERT INTO Realizador VALUES ('90845416000101', '5');
INSERT INTO Entidade VALUES ('99848732000101', '5', 'Alura', 'Rua Vergueiro, 3185, cj 87 - Vila Mariana, São Paulo - SP, CEP 04101-300');
INSERT INTO Realizador VALUES ('99848732000101', '5');

/*Depois do 2° teste*/

/*Este é o 3° teste*/
INSERT INTO Entidade VALUES ('12564872569538', '4', 'Flipside', 'Av. Angelica, 2529 - Bela Vista, Sao Paulo - SP, 01227-200');
INSERT INTO Promotor VALUES ('12564872569538', '4');

/*Depois do 3° teste*/
DELETE FROM Promotor WHERE Entidade_cnpj = '94613522000102';
DELETE FROM Realizador WHERE Entidade_cnpj = '18632495000137';
DELETE FROM Promotor WHERE Entidade_cnpj = '90845416000101';
DELETE FROM Realizador WHERE Entidade_cnpj = '90845416000101';

/*Este é o 4° teste*/
INSERT INTO Promotor VALUES ('05615360000111', '1');
INSERT INTO Realizador VALUES ('47614401000103', '3');
INSERT INTO Realizador VALUES ('90845416000101', '4');