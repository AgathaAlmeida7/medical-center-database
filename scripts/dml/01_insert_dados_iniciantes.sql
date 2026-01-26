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


 INSERT INTO especialidade(nome,descricao) VALUES('Clínica Geral','Atendimento médico geral e diagnóstico inicial.')
 ('Cardiologista','Tratamentoe prevenção de doenças do coração.')
 ('Pedriata','Atendimento médico especializado em crianças.')
 ('Ortopedista','Tratamento de doenças dos ossos,músculos e articulações.')
 ('Ginecologista','Saúde do sistema reprodutor feminino.')
 ('Dermatologista','Tratamento de doenças da pele.')

