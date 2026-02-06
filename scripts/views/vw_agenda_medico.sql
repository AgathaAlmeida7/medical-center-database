CREATE OR REPLACE VIEW vw_agenda_medico AS
SELECT
    m.nome_completo AS medico,
    p.nome_completo AS paciente,
    e.nome AS especialidade,
    c.data_consulta,
    c.hora_consulta,
    c.status
FROM consulta c
JOIN medico m ON m.id = c.medico_id
JOIN paciente p ON p.id = c.paciente_id
JOIN especialidade e ON e.id = c.especialidade_id;
