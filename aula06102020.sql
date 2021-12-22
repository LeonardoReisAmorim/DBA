##ORDER BY

SELECT nome, endereco 
FROM cliente
ORDER BY nome

##Funções de Agregações SUM, AVG, MAX, MIN

SELECT SUM(idcliente) AS 'Soma dos Clientes' 
FROM cliente

SELECT AVG(idcliente) AS 'Media dos Cliente'
FROM cliente

SELECT COUNT(idcliente) AS 'Total de Cliente'
FROM cliente

SELECT MAX(idcliente), nome AS 'Maior Id'
FROM cliente

SELECT MIN(idcliente), nome AS 'Menor id'
FROM cliente

SELECT COUNT(nome) FROM cliente
WHERE idcliente BETWEEN 2 AND 3

SELECT AVG(DISTINCT idcliente) FROM venda
SELECT SUM(DISTINCT idcliente) FROM venda
SELECT COUNT(DISTINCT idcliente) FROM venda

## Agrupamentos GROUP BY

SELECT AVG(idcliente) AS 'Total', nome 
FROM cliente
GROUP BY nome
HAVING AVG(idcliente) >= 3 
ORDER BY nome

Qual é a média de salarios dos empregados:
 	a) por departamento?
 	b) por funcao?

SELECT AVG(idcliente) AS 'Media'
FROM cliente
GROUP BY nome

## Junção com INNER JOIN

SELECT * FROM fornecedor
INSERT INTO fornecedor
VALUES(0, 'Sapatos e CIA', 22365, 'Rua B', 71999, 'sapatos@gmail.com');

INSERT INTO produtos
VALUES(0, 'Short', 20, 1, 25);

SELECT * FROM produtos

SELECT pro.nome, pro.valor, forne.empresa, forne.cnpjcpf
FROM produtos pro
INNER JOIN fornecedor forne ON forne.idfornecedor = pro.idfornecedor

SELECT forne.empresa, forne.cnpjcpf, SUM(pro.valor * pro.quantidade) AS 'Total'
FROM produtos pro
INNER JOIN fornecedor forne ON forne.idfornecedor = pro.idfornecedor
GROUP BY forne.empresa

SELECT pro.nome, forne.cnpjcpf, SUM(pro.valor * pro.quantidade) AS 'Total'
FROM produtos pro
INNER JOIN fornecedor forne ON forne.idfornecedor = pro.idfornecedor
GROUP BY pro.nome

























