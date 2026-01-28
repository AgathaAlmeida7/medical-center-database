
create table paciente(
    id SERIAL primary key,
    cpf char(11) not null unique,
    nome_completo Varchar(150) not null,
    data_nascimento date not null,
    endereco varchar(255),
    email varchar(150) unique

);

 -- esse sql e sql padrao ou ja visando no sgbd postgresql?
create table medico(
    id serial primary key,
    nome_completo varchar(150) not null,
    crm varchar(20) not null unique,
    telefone varchar(20)
);

create table especialidade(
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
    id serial primary key,
    paciente_id int not null,
    medico_id int not null,
    especialidade_id int not null,
    data_consulta date not null,
    hora_consulta time not null,
    status varchar(30) not null,
    observacoes text,
    foreign key (paciente_id) references paciente(id),
    foreign key (medico_id) references medico(id),
    foreign key (especialidade_id) references especialidade(id)
);

create table pagamento(
    id serial primary key,
    id_consulta int not null unique,
    valor decimal(10,2) not null,
    tipo varchar(30) not null,
    status varchar(30) not null,
    foreign key (id_consulta) references consulta(id)
);