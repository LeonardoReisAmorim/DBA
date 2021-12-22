USE vendas;

--questão 02
DELETE FROM fornecedor
WHERE idfornecedor=1 OR empresa='Dilson sapataria'

--questão 03
UPDATE cliente 
SET telefone = 7199963522
WHERE nome = 'Anildo' AND idcliente >= 2

--questão 04
SELECT * FROM cliente

--questão 05
SELECT * FROM produtos WHERE idproduto >=1 AND idproduto <= 10

SELECT * FROM produtos WHERE idproduto BETWEEN 1 AND 10

--questão 06
SELECT * FROM cliente WHERE nome LIKE 'ROG%';

--questão 07
SELECT  DISTINCT empresa FROM fornecedor;

--questão 08
SELECT nome, quantidade FROM produtos WHERE quantidade IS NOT NULL; ## não vazio

SELECT nome, quantidade FROM produtos WHERE quantidade IS NULL; ##vazio

--questão 09
SELECT * FROM cliente WHERE nome NOT LIKE '%RIO';

--questão 10
SELECT * FROM venda WHERE quantidade NOT IN (1,2,3)

--questão 11
SELECT idCliente, idproduto FROM venda 
WHERE idvenda NOT BETWEEN 1 AND 3;





