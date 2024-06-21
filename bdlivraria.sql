create database db_livraria;

use db_livraria;

create table tb_autor(
    id_autor int primary key auto_increment,
    nome varchar(45),
    nr_fone varchar(15),
    pais varchar(45)
);

create table tb_categoria(
    id_categoria int primary key auto_increment,
    nm_categoria varchar(45),
    ds_categoria varchar(150)
);

create table tb_livro(
    id_livro int primary key auto_increment,
    titulo varchar(45),
    ano year,
    ds_livro varchar(100),
    fk_idautor int,
    fk_idcategoria int,
    foreign key (fk_idcategoria) references tb_categoria (id_categoria),
    foreign key (fk_idautor) references tb_autor (id_autor)
);

-- Registro Autores
insert into
    tb_autor(nome, pais, nr_fone)
values
    ('Takehiko Inoue', 'Japao', 59867537),
    ('Machado de Assis', 'Brasil', 90347633),
    ('Antoine de Saint-Exupery', 'França', 02745362),
    ('J. K. Rowling', 'Reino Unido', 74739478),
    ('Inio Asano', 'Japao', 02393746);

-- Registro Categorias
insert into
    tb_categoria(nm_categoria, ds_categoria)
values
    ('Drama', 'Uma historia dramatica'),
    ('Ficcao', 'Fuja da realidade'),
    ('Fabula', 'Historias infantis'),
    ('Aventura', 'Conheça novos lugar'),
    ('Romance e suspense', 'Uma trama');

-- Registro Livros
insert into
    tb_livro(
        titulo,
        ds_livro,
        ano,
        fk_idautor,
        fk_idcategoria
    )
values
    (
        'Vagabond',
        'Uma historia dramatica',
        '1998',
        001,
        001
    ),
    (
        'O Alienista',
        'Fuja da realidade',
        '1982',
        002,
        002
    ),
    (
        'O Pequeno Príncipe',
        'Historias infantis',
        '1943',
        003,
        003
    ),
    (
        'Harry Potter',
        'Conheça novos lugar',
        '1997',
        004,
        004
    ),
    (
        'Boa Noite Punpun',
        'Uma trama',
        '2007',
        005,
        005
    ),
    (
        'Sense Life',
        'Conheça novos lugar',
        '2020',
        004,
        004
    ),
    (
        'Mob Psycho 100',
        'Fuja da realidade',
        '2012',
        002,
        002
    ),
    (
        'A Girl on the Shore Collectors Edition',
        'Uma trama',
        '2023',
        005,
        005
    ),
    (
        'Dom Quixote',
        'Historias infantis',
        '1999',
        003,
        003
    ),
    (
        'Dead Dead Demons de Dedede Destruction',
        'Ficcao',
        '2014',
        002,
        002
    ),
    ('Chainsaw Man', 'Aventura', '2022', 004, 004),
    ('Jujutsu Kaisen', 'Aventura', '2018', 004, 004);