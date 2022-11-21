CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;


CREATE TABLE tb_categorias(
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome_categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias(nome_categoria) VALUES("Verduras");
INSERT INTO tb_categorias(nome_categoria) VALUES("Legumes");
INSERT INTO tb_categorias(nome_categoria) VALUES("Frutas");
INSERT INTO tb_categorias(nome_categoria) VALUES("Ovos");
INSERT INTO tb_categorias(nome_categoria) VALUES("Temperos");

CREATE TABLE tb_produtos(
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    quantidade INT NOT NULL,
    categoria_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)    
);

INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Alface Americana 200g", 5.99, 100,1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Espinafre", 6.99, 200,1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Tomate Italiano", 1.67, 50,2);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Cenoura Orgânica 600g", 12.99, 50,2);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Mamão Papaia", 11.20, 120,3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Maçã", 13.99, 150,3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Ovo Vermelho Caipira 10un", 12.99, 58,4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Ovo Branco Extra", 12.990, 160,4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Pimenta Dedo de Moça 100g", 7.99, 20,5);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id) VALUES("Alecrim Vermelulen 30g", 7.99, 20,5);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco < 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE nome_categoria LIKE "%Frutas%";
