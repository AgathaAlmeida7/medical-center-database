CREATE OR REPLACE VIEW vw_pagamentos_consulta AS
SELECT
    p.nome_completo AS paciente,
    m.nome_completo AS medico,
    c.data_consulta,
    pg.valor,
    pg.tipo AS forma_pagamento,
    pg.status AS status_pagamento
FROM pagamento pg
JOIN consulta c ON c.id = pg.id_consulta
JOIN paciente p ON p.id = c.paciente_id
JOIN medico m ON m.id = c.medico_id;

