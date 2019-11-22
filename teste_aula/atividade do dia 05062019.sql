create table funcionarios (
codigo					numeric NOT NULL,
PrimeiroNome			char (13),
SegundoNome				char (13),
UltimoNome				char (13),
DataNasci,
CPF						numeric (11) unique,
RG						numeric (11) unique,
Endereco				varchar (50) not null, 
CEP						numeric (8) not null,
Cidade					varchar (35) not null,
Fone					numeric (11) not null,
CodigoDepartamento		numeric (15) not null,
Funcao					char (20) not null,
Salario					numeric (8) not null,

primary key (codigo),
foreign key (CodigoDepartamento)
)


create table departamentos (
codigo							numeric, not null,
nome							varchar (36) not null,
Localização						varchar (50),
codigofuncionariogerente		numeric, not null,

primary key (codigo),
foreign key (codigofuncionariogerente)
)
