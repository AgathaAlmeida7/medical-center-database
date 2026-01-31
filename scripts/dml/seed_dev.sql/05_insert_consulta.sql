-- ============================
-- DML: INSERÇÃO DE CONSULTAS
-- BANCO: MEDICAL CENTER
-- SGBD: POSTGRESQL
-- =============================


-- CONSULTAS AGENDADAS E REALIZADAS

 INSERT INTO consulta(paciente_id,medico_id,especialidade_id,data_consulta, hora_consulta,  status,       observacoes)   VALUES
                    (   1,          1,              1,      '2026-02-01',   '09:00',     'AGENDADA',   'PRIMEIRA CONSULTA DO PACIENTE'), 

                    (   2,          2,              3,      '2026-02-02',  '14:30',      'REALIZADA',   'CONSULTA DE RETORNO'),
                    (   3,          3,              2,      '2026-02-03',  '10:00',      'CANCELADA',    'PACIENTE DESMARCOU');      