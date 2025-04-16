create database restaurante;
use restaurante;
create table if not exists funcionario(
	id_funcionario int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255),
    cpf varchar(14),
    data_nascimento date,
    endereco varchar(255),
    telefone varchar(15),
    email varchar(100),
    cargo varchar(100),
    salario decimal(10,2),
    data_admissao date
);
create table if not exists cliente(
	id_cliente int auto_increment primary key,
    nome varchar(255),
    cpf varchar(14),
    data_nascimento date,
    endereco varchar(255),
    telefone varchar(15),
    email varchar(100),
    data_cadastro date
);
create table if not exists produto(
	id_produto int auto_increment primary key,
    nome varchar(255),
    descricao text,
    preco decimal(10,2),
    categoria varchar(100)
);
create table if not exists pedido(
	id_pedido int auto_increment primary key,
    id_cliente int,
    id_funcionario int,
    id_produto int,
    quantidade int,
    preco decimal(10,2),
    data_pedido date,
    situacao varchar(50),
    foreign key (id_cliente) references cliente(id_cliente),
    foreign key (id_funcionario) references funcionario(id_funcionario),
    foreign key (id_produto) references produto(id_produto)
);
create table if not exists info_produto(
	id_info int auto_increment primary key,
    id_produto int,
    ingredientes text,
    fornecedor varchar(255),
    foreign key (id_produto) references produto(id_produto)
);

    
    