CREATE DATABASE banco_dados;
USE banco_dados;

SELECT * FROM usuarios;
drop table usuarios;

CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade ENUM('12-','13-20','21-35','40+') NOT NULL
);

/*
CREATE TABLE respostas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    resposta VARCHAR(255),
    is_correta BOOLEAN,
    pergunta_id BIGINT NOT NULL,
    FOREIGN KEY (pergunta_id) REFERENCES perguntas(id)
);

CREATE TABLE perguntas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    enunciado TEXT NOT NULL
);

-- Pergunta 01
INSERT INTO perguntas (enunciado) VALUES ('Qual paradigma enfatiza o uso de objetos?');
SET @pergunta_id_2001 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Lógico', FALSE, @pergunta_id_2001);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Funcional', FALSE, @pergunta_id_2001);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Orientado a Objetos', TRUE, @pergunta_id_2001);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Imperativo', FALSE, @pergunta_id_2001);

-- Pergunta 02
INSERT INTO perguntas (enunciado) VALUES ('Qual paradigma foca na execução de comandos sequenciais?');
SET @pergunta_id_2002 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Orientado a Objetos', FALSE, @pergunta_id_2002);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Lógico', FALSE, @pergunta_id_2002);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Imperativo', TRUE, @pergunta_id_2002);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Funcional', FALSE, @pergunta_id_2002);

-- Pergunta 03
INSERT INTO perguntas (enunciado) VALUES ('O que define o comportamento de um objeto?');
SET @pergunta_id_2003 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Construtor', FALSE, @pergunta_id_2003);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Classe', FALSE, @pergunta_id_2003);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Atributo', FALSE, @pergunta_id_2003);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Método', TRUE, @pergunta_id_2003);

-- Pergunta 04
INSERT INTO perguntas (enunciado) VALUES ('O que representa o estado de um objeto?');
SET @pergunta_id_2004 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Atributo', TRUE, @pergunta_id_2004);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Interface', FALSE, @pergunta_id_2004);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Método', FALSE, @pergunta_id_2004);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Construtor', FALSE, @pergunta_id_2004);

-- Pergunta 05
INSERT INTO perguntas (enunciado) VALUES ('O encapsulamento visa:');
SET @pergunta_id_2005 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Esconder a implementação interna', TRUE, @pergunta_id_2005);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Reutilizar código', FALSE, @pergunta_id_2005);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Herdar classes', FALSE, @pergunta_id_2005);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Permitir múltiplos métodos', FALSE, @pergunta_id_2005);

-- Pergunta 06
INSERT INTO perguntas (enunciado) VALUES ('A herança permite:');
SET @pergunta_id_2006 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Atribuir múltiplos valores', FALSE, @pergunta_id_2006);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Compartilhar atributos entre classes', TRUE, @pergunta_id_2006);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Declarar interfaces', FALSE, @pergunta_id_2006);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Ocultar variáveis', FALSE, @pergunta_id_2006);

-- Pergunta 07
INSERT INTO perguntas (enunciado) VALUES ('Polimorfismo permite:');
SET @pergunta_id_2007 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Reutilizar código com herança', FALSE, @pergunta_id_2007);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Esconder dados', FALSE, @pergunta_id_2007);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Mudar o tipo de uma variável', FALSE, @pergunta_id_2007);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Usar várias formas de um mesmo método', TRUE, @pergunta_id_2007);

-- Pergunta 08
INSERT INTO perguntas (enunciado) VALUES ('Qual bloco Java captura uma exceção?');
SET @pergunta_id_2008 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('finally', FALSE, @pergunta_id_2008);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('try', FALSE, @pergunta_id_2008);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('throw', FALSE, @pergunta_id_2008);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('catch', TRUE, @pergunta_id_2008);

-- Pergunta 09
INSERT INTO perguntas (enunciado) VALUES ('O que a palavra-chave ''throw'' faz em Java?');
SET @pergunta_id_2009 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Inicia um loop', FALSE, @pergunta_id_2009);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Lança uma exceção', TRUE, @pergunta_id_2009);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Finaliza um método', FALSE, @pergunta_id_2009);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Declara uma exceção', FALSE, @pergunta_id_2009);

-- Pergunta 10
INSERT INTO perguntas (enunciado) VALUES ('Qual pacote é usado para GUI em Java?');
SET @pergunta_id_2010 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('java.sql', FALSE, @pergunta_id_2010);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('java.util', FALSE, @pergunta_id_2010);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('java.net', FALSE, @pergunta_id_2010);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('javax.swing', TRUE, @pergunta_id_2010);

-- Pergunta 11
INSERT INTO perguntas (enunciado) VALUES ('Qual componente exibe texto em Swing?');
SET @pergunta_id_2011 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('JLabel', TRUE, @pergunta_id_2011);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('JButton', FALSE, @pergunta_id_2011);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('JPanel', FALSE, @pergunta_id_2011);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('JTable', FALSE, @pergunta_id_2011);

-- Pergunta 12
INSERT INTO perguntas (enunciado) VALUES ('Uma interface em Java pode:');
SET @pergunta_id_2012 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Conter atributos privados', FALSE, @pergunta_id_2012);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Declarar métodos abstratos', TRUE, @pergunta_id_2012);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Ter construtores', FALSE, @pergunta_id_2012);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Ser instanciada', FALSE, @pergunta_id_2012);

-- Pergunta 13
INSERT INTO perguntas (enunciado) VALUES ('Qual paradigma enfatiza o uso de objetos?');
SET @pergunta_id_2013 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Lógico', FALSE, @pergunta_id_2013);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Orientado a Objetos', TRUE, @pergunta_id_2013);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Imperativo', FALSE, @pergunta_id_2013);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Funcional', FALSE, @pergunta_id_2013);

-- Pergunta 14
INSERT INTO perguntas (enunciado) VALUES ('Qual paradigma foca na execução de comandos sequenciais?');
SET @pergunta_id_2014 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Imperativo', TRUE, @pergunta_id_2014);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Lógico', FALSE, @pergunta_id_2014);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Funcional', FALSE, @pergunta_id_2014);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Orientado a Objetos', FALSE, @pergunta_id_2014);

-- Pergunta 15
INSERT INTO perguntas (enunciado) VALUES ('O que define o comportamento de um objeto?');
SET @pergunta_id_2015 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Método', TRUE, @pergunta_id_2015);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Construtor', FALSE, @pergunta_id_2015);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Atributo', FALSE, @pergunta_id_2015);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Classe', FALSE, @pergunta_id_2015);

-- Pergunta 16
INSERT INTO perguntas (enunciado) VALUES ('O que representa o estado de um objeto?');
SET @pergunta_id_2016 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Método', FALSE, @pergunta_id_2016);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Atributo', TRUE, @pergunta_id_2016);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Construtor', FALSE, @pergunta_id_2016);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Interface', FALSE, @pergunta_id_2016);

-- Pergunta 17
INSERT INTO perguntas (enunciado) VALUES ('O encapsulamento visa:');
SET @pergunta_id_2017 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Herdar classes', FALSE, @pergunta_id_2017);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Reutilizar código', FALSE, @pergunta_id_2017);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Permitir múltiplos métodos', FALSE, @pergunta_id_2017);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Esconder a implementação interna', TRUE, @pergunta_id_2017);

-- Pergunta 18
INSERT INTO perguntas (enunciado) VALUES ('A herança permite:');
SET @pergunta_id_2018 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Compartilhar atributos entre classes', TRUE, @pergunta_id_2018);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Declarar interfaces', FALSE, @pergunta_id_2018);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Atribuir múltiplos valores', FALSE, @pergunta_id_2018);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Ocultar variáveis', FALSE, @pergunta_id_2018);

-- Pergunta 19
INSERT INTO perguntas (enunciado) VALUES ('Polimorfismo permite:');
SET @pergunta_id_2019 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Reutilizar código com herança', FALSE, @pergunta_id_2019);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Mudar o tipo de uma variável', FALSE, @pergunta_id_2019);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Esconder dados', FALSE, @pergunta_id_2019);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('Usar várias formas de um mesmo método', TRUE, @pergunta_id_2019);

-- Pergunta 20
INSERT INTO perguntas (enunciado) VALUES ('Qual bloco Java captura uma exceção?');
SET @pergunta_id_2020 = LAST_INSERT_ID();
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('catch', TRUE, @pergunta_id_2020);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('throw', FALSE, @pergunta_id_2020);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('finally', FALSE, @pergunta_id_2020);
INSERT INTO respostas (resposta, is_correta, pergunta_id) VALUES ('try', FALSE, @pergunta_id_2020);
*/