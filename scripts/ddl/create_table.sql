
create table paciente(
    id SERIAL primary key,
    cpf char(11) not null unique,
    nome_completo Varchar(150) not null,
    data_nascimento date not null,
    endereco varchar(255),
    email varchar(150) unique

);


create table medico(
    id serial primary key,
    nome_completo varchar(150) not null,
    crm varchar(20) not null unique,
    telefone varchar(20)
);

create table especialiade(
    id serial primary key,
    nome varchar(100) not null unique,
    descricao text

);

create table medico_especialidade(
    id_medico int not null,
    id_especialidade int not null,
    primary key(id_medico,id_especialidade),
    foreign key(id_medico) references medico(id),
    foreign key(id_especialidade) references especialidade(id)
);

create table consulta(
    id_serial primary key,
    id_paciente int not null,
    id_medico int not null,
    tipo varchar(50) not null,
    status varchar(30) not null,
    data date not null,
    hora time not null,
    foregein key (id_paciente) referecens paciente(id),
    foreign key(id_medico) references medico(id)
)

create table pagamento(
    id serial primary key,
    id_consulta int not null unique,
    valor decimal(10,2) not null,
    tipo varchar(30) not null,
    status varchar(30) not null,
    foreign key (id_consulta) references consulta(id)
);