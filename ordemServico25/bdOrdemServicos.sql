create database dbOs2025;

use dbOs2025;

create table tbusuarios(
iduser int primary key,

usuario varchar(15) not null,
fone varchar(15),
login varchar (15) not null unique,
senha varchar (200) not null,
perfil varchar(20) not null

);

insert into tbusuarios (iduser, usuario, fone, login, senha, perfil)
value(1,"cleber feitosa", "66999326663", "cleber feitosa", "123456", "Admin");
select * from tbusuarios;

create table tbclientes(
idcli int primary key auto_increment,
nomeCli varchar(50) not null,
endCli varchar (100) not null,
foneCli varchar (15) not null,
emailcli varchar (50) unique
);

insert into tbclientes (nomecli, endcli, fonecli, emailcli) values
("João da Silva", "Rua XV", "66-9999-9999", "joao.silva@gmail.com");

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
tipo varchar(15) not null,
equipamento varchar (150) not null,
defeito varchar (150),
servico varchar (150),
tecnico varchar (30),
valor decimal(10,2),
idcli int not null,
foreign key (idcli) references tbclientes(idcli)

);

