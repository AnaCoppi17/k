DROP DATABASE IF EXISTS diario_classe;
CREATE DATABASE diario_classe;
USE diario_classe;
CREATE TABLE diario_classe(
ID MEDIUMINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
NOME VARCHAR(60) NOT NULL,
numero_matricula VARCHAR(50) NOT NULL,
cidade  VARCHAR(90) NOT NULL,
nota_final  DECIMAL (2,2) NOT NULL,
faltas tinyint (30) NOT NULL
);
SHOW TABLES;
DESCRIBE diario_classe;

INSERT INTO `diario_classe` (`NOME`,`numero_matricula`,`cidade`,`nota_final`,`faltas`)
VALUES
  ("Dean Teles","SK6236094","Montes Claros",7,240),
  ("Fulton Silva","BM7443100","Ananindeua",2,152),
  ("Damon Messias","FD9571142","Bayeux",8,27),
  ("Nina Farias","MB2824738","Castanhal",1,240),
  ("Gemma Almeida","TU8516971","Itapipoca",6,38),
  ("Beck Sousa","PT3263887","Santa Rita",8,264),
  ("Holly de Castro","DS7783848","Caucaia",5,55),
  ("Idona Batista","KL2616719","Londrina",7,36),
  ("Vanna Cardoso","EN8342769","Crato",1,242),
  ("Cain Leite","SM5513777","Anápolis",9,222),
  ("Arsenio Araujo","AH7361863","São João de Meriti",8,205),
  ("Illana de Brito","XI4886455","Caucaia",6,236),
  ("Anastasia Paiva","YO5336581","Camaragibe",10,164),
  ("Clark Barbosa","DG8485436","Ilhéus",3,261),
  ("Grant Lopes","WG9534045","Contagem",1,87),
  ("Caryn Candido","JU2055577","Castanhal",3,257),
  ("Kalia Melo","VX5923125","Olinda",0,274),
  ("Kasper Lima","LM2358687","Imperatriz",3,312),
  ("Odette Paulino","FA7266458","Diadema",4,178),
  ("Lysandra Cavalcante","AR4319841","Caruaru",6,145),
  ("Gregory de Castro","TG7174455","Caucaia",2,110),
  ("Ruth Soares","FQ2769614","Paço do Lumiar",1,111),
  ("Lani Araujo","BB7886869","Florianópolis",1,94),
  ("Lila dos Reis","ND8523075","Maranguape",4,170),
  ("Jelani Domingues","MP3231864","Guarulhos",5,247),
  ("Declan Freire","RZ2997346","Santarém",2,156),
  ("Fulton Morais","YD4050687","São João de Meriti",6,278),
  ("Nigel de Castro","YO8609421","Bayeux",7,198),
  ("Lionel Teodoro","XL3362355","Ananindeua",8,108),
  ("Ray Reis","YI7001664","Lauro de Freitas",3,56),
  ("Rachel Cardoso","YJ1156100","Betim",6,152),
  ("Latifah de Freitas","UX1240352","Betim",1,171),
  ("Elliott Mendes","IH5081468","Canoas",5,203),
  ("Allen dos Anjos","CF1883164","Santarém",10,23),
  ("Timothy Aguiar","IP6516921","Uberaba",7,315),
  ("Madeson de Jesus","MM8772407","Florianópolis",2,287),
  ("Jonas Peixoto","PI8806271","Olinda",9,197),
  ("Jena Guimaraes","DL3474224","Santa Inês",6,308),
  ("Yasir Vasconcelos","SD5781963","Goiânia",7,246),
  ("Shelby Domingues","RP2838318","Diadema",6,135);

SELECT * FROM diario_classe;

##3) Apresentar o nome, matricula, nota e faltas dos 10 alunos que obtiveram as melhores notas. Ordenar o resultado da maior nota para a menor nota.
SELECT NOME, numero_matricula, nota_final, faltas FROM diario_classe
WHERE  nota_final >7 AND nota_final <=10
ORDER BY nota_final DESC
LIMIT 10;

##4) Apresentar os cinco alunos que obtiverem a menor quantidade de faltas.
SELECT NOME, numero_matricula, nota_final, faltas FROM diario_classe
ORDER BY faltas ASC
LIMIT 5;

#5) Apresentar os dados dos alunos que obtiveram nota entre 6 e 10.
SELECT NOME, numero_matricula, cidade, nota_final, faltas FROM diario_classe
WHERE  nota_final >5 AND nota_final <=10
ORDER BY nota_final DESC;

#6) Apresentar os dados dos alunos que obtiveram nota entre 4 e 6.
SELECT NOME, numero_matricula, cidade, nota_final, faltas FROM diario_classe
WHERE  nota_final >3 AND nota_final <=6
ORDER BY nota_final DESC;

#7) Apresentar os dados dos alunos que obtiveram nota entre 0 e 4.
SELECT NOME, numero_matricula, cidade, nota_final, faltas FROM diario_classe
WHERE  nota_final >=0 AND nota_final <=4
ORDER BY nota_final DESC;
#Levando em consideração que o ano letivo de uma disciplina com 4 aulas semanais possui 320 aulas no total:

#8) Apresentar os alunos que possuem no máximo 75% de presença.
SELECT NOME, faltas 
FROM diario_classe
WHERE  (faltas >=80);

#9) Apresentar os alunos que possuem no mínimo 75% de presença. 
SELECT NOME, faltas 
FROM diario_classe
WHERE  (faltas <=80);

#10) Apresentar os alunos que possuem no mínimo 75% de presença e nota entre 6 e 10.
SELECT NOME, faltas 
FROM diario_classe
WHERE  (faltas <=80) AND nota_final >=6 AND nota_final <=10;

#11) Apresentar a quantidade de cidades diferentes que o curso recebe alunos.
SELECT COUNT(DISTINCT cidade) FROM diario_classe;

#12) Apresentar apenas os nomes destas cidades em ordem alfabética.##
SELECT DISTINCT cidade FROM diario_classe ORDER BY cidade; 

