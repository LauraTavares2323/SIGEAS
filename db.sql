CREATE DATABASE classeHub;
USE classeHub;

create table usuarios (
    id int primary key auto_increment,
    nome varchar(255) not null,
    email varchar(255) not null unique,
    senha varchar(255) not null,
    papel enum('aluno', 'professor', 'pedagogo') not null
);

create table turmas (
    id int primary key auto_increment,
    nome varchar(255) not null,
    turno varchar(255) not null,
    ano int not null
);

create table alunos (
    id int primary key auto_increment,
    usuario_id int not null,
    turma_id int,
    foreign key (usuario_id) references usuarios(id),
    foreign key (turma_id) references turmas(id)
);

create table professores (
    id int primary key auto_increment,
    usuario_id int NOT NULL,
    materia varchar(100),
    foreign key (usuario_id) references usuarios(id)
);

create table pedagogos (
    id int primary key auto_increment,
    usuario_id int not null,
    foreign key (usuario_id) references usuarios(id)
);



create table presencas (
    id int primary key auto_increment,
    status enum('presente','falta'),
    usuario_id int not null,
    turma_id int not null,
    foreign key (usuario_id) references usuarios(id),
    foreign key (turma_id) references turmas(id)
);

CREATE TABLE notas (
    id int primary key auto_increment,
    usuario_id int not null,
    nota decimal(5,2),
    foreign key (usuario_id) references usuarios(id)
);
