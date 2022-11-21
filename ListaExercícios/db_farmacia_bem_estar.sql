CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;


CREATE TABLE tb_categorias(
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias(nome_categoria) VALUES("Dermocosméticos");
INSERT INTO tb_categorias(nome_categoria) VALUES("Cabelo");
INSERT INTO tb_categorias(nome_categoria) VALUES("Bebê");
INSERT INTO tb_categorias(nome_categoria) VALUES("Medicamento");
INSERT INTO tb_categorias(nome_categoria) VALUES("Aparelhoes / Testes");

CREATE TABLE tb_produtos(
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    quantidade INT NOT NULL,
    categoria_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)    
);

INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Kit Nivea Luminous Antspot 30ml+luminous", 180.00, 100,1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Neutrogena Creme Hidratante Facial Matte 3", 55.50, 200,1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Ativador de Cachos Salon Line Sos Chachos Oleo de Manga", 42.00, 50,2);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Creme Hidratante Elseve Reparação Total 5 Química - 1x300gr", 27.90, 35,2);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Fralda Babysec Galinha Pintadinha Jumbo XG 8x20un", 218.50, 60,3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Fralda Mamypoko Calca Azul Bag XG - 2x56un", 188.90, 55,3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Buscopan 10mg Caixa 1x20 drageas", 29.30, 58,4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Neosaldina C/30 Drageas 1x1", 51.20, 160,4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Aparelho de Pressao Omron Digital 30 Memórias", 199.90, 20,5);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Balança G-Tech Digital Glass - 1x1", 119.80, 20,5);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco < 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE nome_categoria LIKE "%Dermocosméticos%";
