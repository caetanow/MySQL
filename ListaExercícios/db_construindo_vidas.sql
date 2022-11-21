CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;


CREATE TABLE tb_categorias(
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias(nome_categoria) VALUES("Hidráulicos");
INSERT INTO tb_categorias(nome_categoria) VALUES("Ferramentas");
INSERT INTO tb_categorias(nome_categoria) VALUES("Louças");
INSERT INTO tb_categorias(nome_categoria) VALUES("Pintura");
INSERT INTO tb_categorias(nome_categoria) VALUES("Pisos");

CREATE TABLE tb_produtos(
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    quantidade INT NOT NULL,
    categoria_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)    
);

INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Tubo Soldável 50 mm - 6 metros", 91.90, 100,1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Caixa D’água 1.000L", 389.90, 30,1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Serra Mármore SMV1300S S/Kit 220V", 391.90, 50,2);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Furadeira IMP 1/2 FIV 710N 220V", 429.90, 50,2);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Cuba Embutir 49x36 Branco", 74.90, 120,3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Bacia Acoplada Sabatini Branca", 565.90, 150,3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Tinta Super Cobertura Semibrilho 18L", 349.90, 58,4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Tinta Acetinada Toque Suave 18L Leinertex", 469.90, 160,4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("PORCELANATO 73×73 POLIDO", 62.90, 200,5);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("PORCELANATO 72X72 ACETINADO", 47.90, 200,5);

SELECT * FROM tb_produtos WHERE preco > 100;
SELECT * FROM tb_produtos WHERE preco < 100;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE nome_categoria LIKE "%Hidráulicos%";
