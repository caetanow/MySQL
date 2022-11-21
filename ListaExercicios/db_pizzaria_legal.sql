CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;


CREATE TABLE tb_categorias(
	id BIGINT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias(tipo) VALUES("Salgada");
INSERT INTO tb_categorias(tipo) VALUES("Doce");

CREATE TABLE tb_pizzas(
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    tamanho VARCHAR(20) NOT NULL,
    categoria_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)    
);

INSERT INTO tb_pizzas(nome, preco, tamanho, categoria_id) VALUES("Calabresa", 47.00, "G",1);
INSERT INTO tb_pizzas(nome, preco, tamanho, categoria_id) VALUES("Portuguesa", 50.00, "G",1);
INSERT INTO tb_pizzas(nome, preco, tamanho, categoria_id) VALUES("Frango", 40.00, "G",1);
INSERT INTO tb_pizzas(nome, preco, tamanho, categoria_id) VALUES("Bacon", 44.00, "G",1);
INSERT INTO tb_pizzas(nome, preco, tamanho, categoria_id) VALUES("Manga", 44.00, "G",2);
INSERT INTO tb_pizzas(nome, preco, tamanho, categoria_id) VALUES("Chocolate", 55.00, "G",2);
INSERT INTO tb_pizzas(nome, preco, tamanho, categoria_id) VALUES("Doce de Leite", 44.00, "G",2);
INSERT INTO tb_pizzas(nome, preco, tamanho, categoria_id) VALUES("Pêssego", 60.00, "G",2);


SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco < 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tipo LIKE "%doce%";
