CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome_classe VARCHAR(20) NOT NULL,
    descricao VARCHAR(255), 
    dados_vida VARCHAR(10),
    habilidade_primaria VARCHAR(255),
    prof_resistencia VARCHAR(255),
    prof_armas_armadura VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura) 
VALUES("Bárbaro", "Um feroz guerreiro de origem primitiva que pode entrar em fúria durante uma batalha",
		"d12", "Força", "Força & Constituição", "Armaduras leves e médias, escudos, armas simples e marciais");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura) 
VALUES("Bardo", "Um místico inspirador que possui poderes que ecoam a música da criação",
		"d8", "Carisma", "Destreza & Carisma", "Armaduras leves, armas simples, bestas de mão, espadas longas, espadas curtas e rapieiras");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura)
VALUES("Bruxo", "Um portador de magia derivada de barganha com uma entidade planar",
		"d8", "Carisma", "Sabedoria & Carisma", "Armaduras leves, armas simples");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura)
VALUES("Clérigo", "Um campeão sacerdotal que empunha magia divina a serviço de um poder maior",
		"d8", "Sabedoria", "Sabedoria & Carisma", "Armaduras leves e médias, escudos, armas simples");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura)
VALUES("Druida", "Um sacerdote da Crença Antiga, detentor dos poderes da natureza - luz da lua e crescimento das plantas, fogo e relâmpagos - e capaz de adotar formas animais",
		"d8", "Sabedoria", "Inteligência & Sabedoria", "Armaduras leves e médias (não-metálicas), escudos (não-metálicos), clavas, adagas, dardos, azagaias, maças, bordões, cimitarras, foices, fundas e lanças");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura)
VALUES("Feiticeiro", "Um conjurador que possui magias latente advinda de um dom ou linhagem",
		"d6", "Carisma", "Constituição & Carisma", "Adagas, dardos, fundas, bordões e bestas leves");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura)
VALUES("Guerreiro", "Um mestre do combate, perito em uma vasta gama de armas e armaduras",
		"d10", "Força ou Destreza", "Força & Constituição", "Todas as armaduras e armas simples e marciais");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura)
VALUES("Ladino", "Um trapaceiro que utiliza de furtividade e astúcia para sobrepujar os obstáculos e inimigos",
		"d8", "Destreza", "Destreza & Inteligência", "Armaduras leves, armas simples, bestas de mão, espadas longas, rapieiras, espadas curtas");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura)
VALUES("Mago", "Um usuário de magia, capaz de manipular as estruturas da realidade",
		"d6", "Inteligência", "Inteligência & Sabedoria", "Adagas, dardos, fundas, bastões, bestas leves");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura)
VALUES("Monge", "Um mestre das artes marciais, utilizando o poder corporal para atingir a perfeição física e espiritual",
		"d8", "Destreza & Sabedoria", "Força & Destreza", "Armas simples, espadas curtas");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura)
VALUES("Paladino", "Um guerreiro divino vinculado a um juramento sagrado",
		"d10", "Força & Carisma", "Sabedoria & Carisma", "Todas as armaduras, escudos, armas simples e marciais");

INSERT INTO tb_classes(nome_classe, descricao, dados_vida, habilidade_primaria, prof_resistencia, prof_armas_armadura)
VALUES("Patrulheiro", "Um guerreiro que utiliza do poderio marcial e magia da natureza para combater ameaças nos limites da civilização",
		"d10", "Destreza & Sabedoria", "Força & Destreza", "Armaduras leves, escudos, armas simples e marciais");


CREATE TABLE tb_personagens(
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome_personagem VARCHAR(50) NOT NULL,
    nivel_personagem INT(40),
    forca INT NOT NULL,
    destreza INT NOT NULL,
    constituicao INT NOT NULL,
    inteligencia INT NOT NULL,
    sabedoria INT NOT NULL,
    carisma INT NOT NULL,
    id_classe BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(id_classe) REFERENCES tb_classes(id)    
);	

INSERT INTO tb_personagens(nome_personagem, nivel_personagem, forca, destreza, constituicao, inteligencia, sabedoria, carisma, id_classe)
VALUES("Gauss",1,5,14,9,13,16,15,5);

INSERT INTO tb_personagens(nome_personagem, nivel_personagem, forca, destreza, constituicao, inteligencia, sabedoria, carisma, id_classe)
VALUES("Sawor",1,12,17,13,12,12,16,11);

INSERT INTO tb_personagens(nome_personagem, nivel_personagem, forca, destreza, constituicao, inteligencia, sabedoria, carisma, id_classe)
VALUES("Findien",1,16,12,19,16,13,15,1);

INSERT INTO tb_personagens(nome_personagem, nivel_personagem, forca, destreza, constituicao, inteligencia, sabedoria, carisma, id_classe)
VALUES("Ryan",1,9,14,14,18,16,14,8);

INSERT INTO tb_personagens(nome_personagem, nivel_personagem, forca, destreza, constituicao, inteligencia, sabedoria, carisma, id_classe)
VALUES("Esther",1,15,12,13,11,16,19,2);

INSERT INTO tb_personagens(nome_personagem, nivel_personagem, forca, destreza, constituicao, inteligencia, sabedoria, carisma, id_classe)
VALUES("Tânia",1,21,18,16,9,16,9,7);

INSERT INTO tb_personagens(nome_personagem, nivel_personagem, forca, destreza, constituicao, inteligencia, sabedoria, carisma, id_classe)
VALUES("Pedro",1,13,12,12,19,17,15,9);

INSERT INTO tb_personagens(nome_personagem, nivel_personagem, forca, destreza, constituicao, inteligencia, sabedoria, carisma, id_classe)
VALUES("Silvana",1,16,11,11,14,16,19,3);

INSERT INTO tb_personagens(nome_personagem, nivel_personagem, forca, destreza, constituicao, inteligencia, sabedoria, carisma, id_classe)
VALUES("Caio",1,19,16,16,13,12,10,7);
 
 
 SELECT * FROM tb_personagens WHERE forca > 15;
 SELECT * FROM tb_personagens WHERE forca < 15;
 SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";
 SELECT nome_personagem Nome, nivel_personagem Nivel, nome_classe Classe, 
 forca "FOR", destreza DES, constituicao CON, inteligencia "INT", sabedoria SAB,
 carisma CAR FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;
 
 SELECT nome_personagem Nome, nivel_personagem Nivel, nome_classe Classe, 
 forca "FOR", destreza DES, constituicao CON, inteligencia "INT", sabedoria SAB,
 carisma CAR FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
 WHERE nome_classe = "guerreiro";
