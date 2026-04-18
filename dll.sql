
USE gravadora;
--- Criando a tabela cantor
CREATE TABLE cantor (
	idCantor INT PRIMARY KEY,
    nomeCantor varchar(100),
    biografia varchar(500)
);
--- Criando a tabela musica


-- DROP TABLE

DROP TABLE musica;

-- criando tabela CD (ENTIDADE FORTE)
CREATE TABLE cd (
	idCD INT PRIMARY KEY,
    nome VARCHAR(100),
    gravadora VARCHAR(100)
    
);

create table musica (
	idmusica INT PRIMARY KEY,
    idcantor INT,
    idCD INT,
    titulo varchar(60) NOT NULL,
    tempo INT NOT NULL,
    genero varchar(50) NOT NULL,

-- contraints (restrições)
    foreign key (idcantor) references cantor(idcantor),
    FOREIGN KEY (idCD) references cd(idCD)
);

-- iserindo dados

insert into cantor
	(idCantor, nomeCantor, biografia)
values(1,'Marisa aos Montes','Nasceu no rio de janeiro')

SELECT *
from cantor