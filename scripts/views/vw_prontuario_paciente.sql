CREATE OR REPLACE VIEW vw_prontuario_paciente AS
SELECT
    p.id AS paciente_id,
    p.nome_completo AS paciente,
    p.data_nascimento,
    m.nome_completo AS medico,
    e.nome AS especialidade,
    c.data_consulta,
    c.hora_consulta,
    c.status,
    c.observacoes
FROM consulta c
JOIN paciente p ON p.id = c.paciente_id
JOIN medico m ON m.id = c.medico_id
JOIN especialidade e ON e.id = c.especialidade_id;
