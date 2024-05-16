-- 1) Crie um banco de dados para um serviço de RH de uma empresa
-- 2)Crie uma tabela de colaboradores e determine 5 atributos
-- 3)Insira nesta tabela no mínimo 5 dados (registros).
-- 4) Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
-- 5) Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000
-- 6) Ao término atualize um registro desta tabela através de uma query de atualização.

-- 1)
CREATE DATABASE db_rh;
USE db_rh;

-- 2)
CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
PRIMARY KEY (id),
nome VARCHAR(255) NOT NULL,
matricula INT,
dataadmissao DATE,
setor VARCHAR(255) NOT NULL,
salario DECIMAL (7,2) NOT NULL
);

SELECT * FROM tb_colaboradores;

-- 3)
INSERT INTO tb_colaboradores (nome,matricula,dataadmissao,setor,salario)
VALUES ("Eduarda", 1234,"2010-05-18", "bem estar", 4052.57),
("Letícia", 1235,"2012-07-31", "implantação", 5032.00),
("Alex", 1236,"2012-07-13", "contabilidade", 3828.26),
("Barbara", 1237,"2019-04-24", "logística", 2954.60),
("Bruce", 1238,"2022-07-01", "segurança", 1999.48);

-- 4)

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

-- 5)
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

-- 6)
UPDATE tb_colaboradores SET setor = "diretoria" WHERE id=2;
SELECT * FROM tb_colaboradores;