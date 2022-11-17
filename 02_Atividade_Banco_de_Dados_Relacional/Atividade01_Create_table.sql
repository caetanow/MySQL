USE db_rhcompany;
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    primeiro_nome VARCHAR(45) NOT NULL,
    sobrenome VARCHAR(45) NOT NULL,
    data_nascimento date NOT NULL,
    matricula VARCHAR(45),
    departamento VARCHAR(45),
    salario DECIMAL NOT NULL    
);