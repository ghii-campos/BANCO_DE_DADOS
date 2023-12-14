CREATE TABLE "tb_produtos"(
	"produto_id" INTEGER,
	"nome" TEXT NOT NULL,
	"tipo" TEXT NOT NULL,
	"preco" TEXT NOT NULL,
	"descricao" TEXT NOT NULL,
	PRIMARY KEY ("produto_id" AUTOINCREMENT)
);



CREATE TABLE "tb_pedidos"(
	"pedido_id" INTEGER,
	"mesa_id" TEXT NOT NULL,
	"produto_id" TEXT NOT NULL,
	"quantidade" TEXT NOT NULL,
	"total" TEXT NOT NULL,
	PRIMARY KEY ("tb_pedidos" AUTOINCREMENT),
	FOREIGN KEY ("mesa_id") REFERENCES tb_mesas ("mesa_id"),
	FOREIGN KEY ("produto_id") REFERENCES tb_produtos ("produto_id")
)






INSERT INTO "tb_produtos" (nome, tipo, precos, descricao) 
VALUES
	('sorvete de morango', 'sorvetes', '5,00', 'todos os tipos de sorvete'),
	('Açaí', 'sorvetes', '15,00', 'com todos os acompanhamentos';),
	('pizza', 'comida', '50,00', 'todos os sabores'),
	('hamburguer', 'lanche', '20,00', 'contém muitos igredientes'),
	('refrigerante', 'bebida', '7,00', 'todos os sabores'),
	('bebidas naturais', 'bebida', '10,00', 'possuin frutas'),
	('churrasco', 'comida', '30,00', 'completa'),
	('marmita', 'comida', '40,00', 'completa');


INSERT INTO "tb_mesas" (numero, capacidade) 
VALUES
	('1', '6'),
	('2', '4'),
	('3', '6'),
	('4', '5'),
	('5', '4'),
	('6', '6'),
	('7', '5'),
	('8', '4');


INSERT INTO "tb_pedidos" (mesa_id, produto_id, quantidade, total) 
VALUES
	('1', '1', '1', '40,00'),
	('2', '2', '1', '7,00'),
	('3', '3', '2', '10,00'),
	('4', '4', '2', '30,00'),
	('5', '5', '3', '45,00'),
	('6', '6', '3', '22,00'),
	('7', '7', '2', '35,00'),
	('8', '8', '2', '15,00');




//CONSULTA

SELECT * FROM tb_produtos WHERE tipo = "bebida";

SELECT * FROM tb_mesas WHERE numero = "1";

SELECT nome, tipo, preco FROM tb_produtos;



SELECT * FROM tb_mesas WHERE numero = "1";

SELECT * FROM tb_mesas WHERE capacidade = "4";

//INNER JOIN

SELECT
	tb_produtos.nome, tipo, preco,
	tb_mesas.numero, capacidade,
	tb_pedidos.pedido_id, quantidade, total
FROM
	tb_pedidos
INNER JOIN
	tb_produtos  ON tb_pedidos.produto_id = tb_produtos.produto_id
INNER JOIN
	tb_mesas  ON tb_pedidos.mesa_id = tb_mesas.mesa_id


SELECT
	tb_produtos.nome, tipo, preco,
	tb_mesas.numero, capacidade,
	tb_pedidos.pedido_id, quantidade, total
FROM
	tb_pedidos
INNER JOIN
	tb_produtos  ON tb_pedidos.produto_id = tb_produtos.produto_id
INNER JOIN
	tb_mesas  ON tb_pedidos.mesa_id = tb_mesas.mesa_id
WHERE
	tb_pedidos.total = "30,00"
    
    
    SELECT
	tb_produtos.nome, tipo, preco,
	tb_mesas.numero, capacidade,
	tb_pedidos.pedido_id, quantidade, total
FROM
	tb_pedidos
INNER JOIN
	tb_produtos  ON tb_pedidos.produto_id = tb_produtos.produto_id
INNER JOIN
	tb_mesas  ON tb_pedidos.mesa_id = tb_mesas.mesa_id
WHERE
	tb_pedidos.total > '20,00'
    
//UPDATES

UPDATE tb_produtos
SET preco = "50,00"
WHERE produto_id = 2;

UPDATE tb_produtos
SET preco = "50,00"
WHERE produto_id = 1;

UPDATE tb_produtos
SET preco = "40,00"
WHERE produto_id = 5;

UPDATE tb_produtos
SET preco = "58,00"
WHERE produto_id = 3;

UPDATE tb_produtos
SET preco = "70,00"
WHERE produto_id = 4;

UPDATE tb_mesas
SET capacidade = "6"
WHERE mesa_id = 2;

UPDATE tb_mesas
SET capacidade = "4"
WHERE mesa_id = 1;

UPDATE tb_mesas
SET capacidade = "8"
WHERE mesa_id = 3;

UPDATE tb_mesas
SET capacidade = "6"
WHERE mesa_id = 4;

UPDATE tb_mesas
SET capacidade = "5"
WHERE mesa_id = 5;

//EXCLUINDO

DELETE FROM tb_pedidos WHERE quantidade = 1;
DELETE FROM tb_pedidos WHERE quantidade = 2;
DELETE FROM tb_pedidos WHERE quantidade = 3;
DELETE FROM tb_pedidos WHERE quantidade = 4;
DELETE FROM tb_pedidos WHERE quantidade = 5;
