USE db_escola;
CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    sexo CHAR(1),
    nota DECIMAL(3,2)
);