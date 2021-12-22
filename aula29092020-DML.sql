#DML Linguagem de Manipulação de dados
# Inserir, Deletar, Atualizar e Selecionar um registro

USE pw_aula;

#Insert
INSERT INTO cliente(nome, idade, sexo)
VALUES('Vitor', 25, 'M')

INSERT INTO cliente
VALUES(0,'Daniela', 36, 'F')

INSERT INTO cliente(sexo, nome, idade)
VALUES('M','Ricardo', 40)

SELECT * FROM cliente

#Update
UPDATE cliente
SET nome = 'Daniele', idade = 38
WHERE id = 2

UPDATE cliente
SET nome = 'Joseane', idade = 40
WHERE nome = 'Daniele' AND idade = 38

#controlando a transação
START TRANSACTION

	UPDATE cliente
	SET nome = 'Joseane', idade = 40

	SELECT * FROM cliente

ROLLBACK #cancelar a execução
COMMIT #confirmar a execução 

#delete
DELETE FROM cliente
WHERE nome = 'Daniele' OR idade = 25  

DELETE FROM cliente
WHERE id = 2


#SELECT

SELECT * FROM cliente
SELECT nome AS 'Nome Cliente', idade AS 'Idade Cliente' FROM cliente
SELECT id FROM cliente

SELECT * FROM produto


INSERT INTO produto
VALUES(0,'calça', 48, 25)


SELECT DISTINCT(quantidade) FROM produto


#operadores relacionais
SELECT nome, quantidade
FROM produto
WHERE id >= 1 AND id <= 10

# >, <, >=, <=, =, <>


SELECT * FROM produto
WHERE id BETWEEN 1 AND 2

SELECT * FROM produto
WHERE id NOT BETWEEN 1 AND 10

SELECT * FROM produto
WHERE nome LIKE '%SA' # % no inicio, valida os caracteres finais

SELECT * FROM produto
WHERE nome LIKE 'SA%' # % no final, valida os caracteres iniciais

SELECT * FROM produto
WHERE nome LIKE '%SA%' # % no inicio e final, valida os caracteres em qualquer parte da string

SELECT * FROM produto
WHERE nome NOT LIKE '%A' #negação do LIKE

SELECT * FROM produto
WHERE nome IS NULL # IS NULL afirmando que o campo esta vazio

SELECT * FROM produto
WHERE nome IS NOT NULL # IS NOT NULL afirma que o campo não pode ser vazio

SELECT * FROM produto
WHERE id IN(1,2,3) # conjuntos

SELECT * FROM produto
WHERE id NOT IN(5,7) # NOT IN negação

# selecione o cpf e nome dos funcionarios com o codigo entre 1 e 4

SELECT cpf, nome FROM funcionario
WHERE id BETWEEN 1 AND 4

# selecione o cpf e nome dos funcionario que ganhe fora da faixa de 1000 e 3000

SELECT cpf, nome FROM funcionario
WHERE salario NOT BETWEEN 1000 AND 3000

# selecione o nome e idade dos clientes que começam com as letras MAR

SELECT nome, idade 
FROM cliente
WHERE nome LIKE 'MAR%'

# % no inicio pega os ultimos caracteres
# % no fim pega os primeiros caracteres
# % no inicio e fim pega os caracteres em qualquer parte do campo













