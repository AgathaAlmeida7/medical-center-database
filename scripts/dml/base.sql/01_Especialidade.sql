-- =======================
-- DADOS INICIAIS DO SISTEMA
-- BANCO: medical_center
-- SBBD: PostgreSQL
-- OBJETIVO:Popular tabelas com dados base
-- =======================

-- =======================
-- TABELA:ESPECIALIDADE
-- DESCRIÇÃO:
-- Armazena as especialidades médicas disponíveis
-- Essas especialidades são dados iniciais de exemplo
-- e podem ser ampliadas conforme a necessidade do sistema


INSERT INTO especialidade (nome, descricao) VALUES
('Clínica Geral','Atendimento médico geral e diagnóstico inicial.'),
('Cardiologista','Tratamento e prevenção de doenças do coração.'),
('Pediatra','Atendimento médico especializado em crianças.'),
('Ortopedista','Tratamento de doenças dos ossos, músculos e articulações.'),
('Ginecologista','Saúde do sistema reprodutor feminino.'),
('Dermatologista','Tratamento de doenças da pele.');


 -- ver aqui para botar comando dtl dentro desse banco de dados

 -- ESPECIALIDADE(OK)
 -- PACIENTE(fazer agora)

  -- quando a gente for jjuntar iss aqui com o sgbd postgresql , vai ter que repetir esses scripts ou ja vai  vao pra la automaticamente?
 -- qual a diferença de fazer isso por aqui , e so fazer script direto la no sgbd postgresql
-- esses valores aqui representativos do dml é que realmente eles estao la no levantamento de requisitos ou n? como que funciona essa logica aqui? como explicar o pq desses valores? ou se sao representativos? como dizer? em projetos reais o cliente sempre dar? ou mandar botar valores para deixar guardado? comoé isos? e como aqui é aqui o nosso caso?









 -- MEDICO
 -- MEDICO_ESPECIALIDADE
 -- CONSULTA
 -- PAGAMENTO


