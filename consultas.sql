INSERT INTO usuario (nomeUsuario, emailUsuario, senhaUsuario)
VALUES ('User1','op1', 'op1');
INSERT INTO usuario (nomeUsuario, emailUsuario, senhaUsuario)
VALUES ('User2','op2', 'op2');

INSERT INTO produto (nomeProduto, quantidadeProduto, precoProduto)
VALUES ('Banana','100', '5.00');
INSERT INTO produto (nomeProduto, quantidadeProduto, precoProduto)
VALUES ('Laranja','500', '2.00');
INSERT INTO produto (nomeProduto, quantidadeProduto, precoProduto)
VALUES ('Manga','800', '4.00');

INSERT INTO pessoa (nomePessoa, telefonePessoa, emailPessoa, cpf, cnpj, razaoSocial)
VALUES ('Joao', '1111-11111', 'joao@riacho.com', '11111111111', NULL, NULL);

INSERT INTO pessoa (nomePessoa, telefonePessoa, emailPessoa, cpf, cnpj, razaoSocial)
VALUES ('JJC', '2222-2222', 'jjc@riacho.com', NULL,'22222222222','teste');

INSERT INTO compra (idPessoa, idProduto, idUsuario, quantidadeCompra, precoUniCompra, dataVenda)
VALUES ('2','2','1','20','100.00', '2024-05-05');
INSERT INTO compra (idPessoa, idProduto, idUsuario, quantidadeCompra, precoUniCompra, dataVenda)
VALUES ('2','3','1','20','40.00', '2024-05-05');
INSERT INTO compra (idPessoa, idProduto, idUsuario, quantidadeCompra, precoUniCompra, dataVenda)
VALUES ('3','4','1','50','200.00', '2024-05-05');

SELECT * FROM pessoa WHERE cpf IS NOT NULL;

SELECT * FROM pessoa WHERE cnpj IS NOT NULL;

SELECT * FROM compra

SELECT * FROM venda

SELECT SUM(precoUniCompra) AS ValorTotalCompras 
FROM compra