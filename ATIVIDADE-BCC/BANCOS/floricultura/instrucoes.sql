CREATE TABLE "tb_cliente"(
	"cod_cliente" INTEGER,
	"nome" TEXT NOT NULL,
	"cpf" INTEGER,
	"telefone" TEXT, 
	"endereco_entrega" TEXT,
	
	PRIMARY KEY("cod_cliente" AUTOINCREMENT)
);


	CREATE TABLE "tb_flor" (
	"cod_flores" INTEGER,
	"nome_cientifico"  TEXT NOT NULL,
	"nome_popular"  TEXT NOT NULL,
	"preco" INTEGER,
	"quantidade_estoque" INTEGER,
	"cores_disponiveis" TEXT,
	PRIMARY KEY("cod_flores" AUTOINCREMENT)
);


	CREATE TABLE "tb_pedido" (
    "cod_pedido" INTEGER,
    "data_realizacao" TEXT NOT NULL,
    "valor_total" TEXT NOT NULL,
    "data_entrega" TEXT,
    "horario" TEXT,
    "quantidade" TEXT,
    "cod_flores" INTEGER,
    "cod_cliente" INTEGER,
    CONSTRAINT "cod_flores" FOREIGN KEY ("cod_flores") REFERENCES "tb_flor" ("cod_flores"),
    CONSTRAINT "cod_cliente" FOREIGN KEY ("cod_cliente") REFERENCES "tb_cliente" ("cod_cliente"),
    PRIMARY KEY ("cod_pedido" AUTOINCREMENT)
);

INSERT INTO tb_cliente (nome, cpf, telefone, endereco_entrega) VALUES
    ('João da Silva', 12345678912, '9988776655', 'Rua A, 123'),
    ('Maria Souza', 98765432198, '8877665544', 'Rua B, 456'),
    ('Carlos Oliveira', 56789123456, '7766554433', 'Rua C, 789'),
    ('Ana Santos', 34567891234, '6655443322', 'Rua D, 987'),
    ('Pedro Almeida', 78912345678, '5544332211', 'Rua E, 654'),
    ('Mariana Lima', 56789123456, '4433221100', 'Rua F, 321'),
    ('José Pereira', 23456789123, '3322110099', 'Rua G, 159'),
    ('Amanda Costa', 91234567890, '2211009988', 'Rua H, 753');


INSERT INTO tb_pedido (data_realizacao, valor_total, data_entrega, horario, quantidade, cod_flores, cod_cliente) VALUES
    ('2022-01-01', '50.00', '2022-01-03', '10:00', '3', 1, 1),
    ('2022-01-02', '60.00', '2022-01-05', '14:00', '2', 2, 2),
    ('2022-01-03', '70.00', '2022-01-06', '12:00', '1', 3, 3),
    ('2022-01-04', '80.00', '2022-01-07', '16:00', '4', 4, 4),
    ('2022-01-05', '90.00', '2022-01-08', '11:00', '3', 5, 5),
    ('2022-01-06', '100.00', '2022-01-09', '13:00', '2', 6, 6),
    ('2022-01-07', '110.00', '2022-01-10', '15:00', '1', 7, 7),
    ('2022-01-08', '120.00', '2022-01-11', '10:00', '5', 8, 8);




INSERT INTO tb_flor (nome_cientifico, nome_popular, preco, quantidade_estoque, cores_disponiveis) VALUES
    ('Rosa sp.', 'Rosa', 10, 50, 'Vermelha'),
    ('Lílium sp.', 'Lírio', 15, 30, 'Branca, Amarela'),
    ('Tulipa sp.', 'Tulipa', 12, 40, 'Vermelha, Amarela'),
    ('Orquídea sp.', 'Orquídea', 20, 25, 'Roxa, Rosa, Branca'),
    ('Girassol sp.', 'Girassol', 8, 60, 'Amarelo'),
    ('Cravo sp.', 'Cravo', 7, 70, 'Vermelho, Branco'),
    ('Margarida sp.', 'Margarida', 6, 80, 'Branca'),
    ('Violeta sp.', 'Violeta', 5, 90, 'Roxa');




