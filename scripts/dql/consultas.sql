-- criação das consultas reais que esse sistema terá

-- consultas agendadas
-- por clientes
-- por medico
-- pagamentos pendentes
-- especialidades dos medicos
-- historico completo (joins)

-- dps comentar cada consulta

-- dps cominitar unicar o dql

-- ==============================
-- DQL - CONSULTAS DO SISTEMA
-- PROJETO : MEDICAL CENTER DATABASE
-- SGBD: POSTGRESQL
-- ==============================


-- 01) LISTAR TODOS OS PACIENTES CADASTRADOS

SELECT  
    id,
    nome_completo,
    cpf,
    email
from paciente
order by nome_completo;

-- 02) consultas agendadas

SELECT 
    c.id,
    p.nome_completo AS paciente,
    m.nome_completo AS medico,
    e.nome AS especialidade,
    c.data_consulta,
    c.hora_consulta
FROM consulta c
join paciente p on p.id = c.paciente_id
join medico m on m.id= c.id_medico
join especialidade e on e.id = c.especialidade_id
where c.status = 'AGENDADA'
order by c.data_consulta,c.hora_consulta;

-- consulta 03-agenda de um medico
-- uso real de um medico vendo agenda

-- agenda de um medico especifico

select 
    m.nome_completo as medico,
    p.nome_completo as paciente,
    c.data_consulta,
    c.hora_consulta,
    c.status
from consulta c
join medico m on m.id= c.id_medico
join paciente p on p.id= c.id_paciente
where m.id=1
order by c.data_consulta,c.hora_consulta;
-- em breve isso aqui irá virá endpoint e filtro dinamico para o backend

-- consulta 04- historico de consultas de um paciente
-- uso prontuario

-- historico de consultas de um  paciente

select
    p.nome_completo as paciente,
    m.nome_completo as medico,
    e.nome as especialidade,
    c.data_consulta,
    c.status,
    c.observacoes
from consulta c
join paciente p on p.id = c.id_paciente
join medico m m.id = c.id_medico
join especialidade e on e.id = c.id_especialidade
where p.id=1
order by c.data_consulta desc;

-- consulta 05-pagamentos realizados
-- uso real financeiro

-- pagamentos realizados

select
    p.nome_completo as paciente,
    pg.valor,
    pg.tipo,
    pg.status
from pagamento pg
join consulta c on c.id = pg.id_consulta
join paciente p on p.id= c.id_paciente
where pg.status = 'pago';

-- consulta 06- pagamento pendente

select
    p.nome_completo as paciente,
    pg.valor,
    pg.tipo
from pagamento pg
join consulta c on c.id = pg.id_consulta
join paciente p on p.id= c.id_paciente
where pg.status= 'pendente';
