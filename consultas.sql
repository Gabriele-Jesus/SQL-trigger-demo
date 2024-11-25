INSERT INTO ALUNO (NOME, TELEFONE) VALUES ('João Silva', '123456789');

INSERT INTO DISCIPLINA (NOME) VALUES ('Matemática');

INSERT INTO MATRICULA (ALUNO_ID, DISCIPLINA_ID, DATA_MATRICULA) 
VALUES (1, 1, '2024-11-24');

--Assim, o trigger será acionado e o e-mail do aluno João Silva será atualizado automaticamente para aluno1@escola.com (considerando que o ALUNO_ID é 1)

--usando select from para ver o funcionamento do trigger:
SELECT * FROM ALUNO WHERE ID = 1;

--a saída deve mostrar essa tabela com esse resultado:
ID	NOME	    EMAIL	            TELEFONE
1	João Silva	aluno1@escola.com	123456789
