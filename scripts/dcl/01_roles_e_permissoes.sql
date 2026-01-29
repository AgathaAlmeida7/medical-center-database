-- =====================================
-- DCL - CONTROLE DE USUÁRIOS E PERMISSOES
-- PROJETO: MEDICAL CENTER DATABASE
-- SGBD: POSTGRESQL 
-- ====================================

-- AQUI EU VOU CRIAR QUEM É O USUARIO RESPONSAVEL POR PUDER MEXER NESSE BANCO EM SI:
-- O USUARIO DO SISTEMA ELE PODE:
-- SELECIONAR,INSERIR,ALTERAR,MAS N PODE APAGAR E ALTERAR A ESTRUTURA PROPRIAMENTE DITA DO SISTEMA

-- esses comandos dcl aqui eles irao responder 3 perguntas
-- 1-quem pode entrar no banco
-- 2- o que essa pessoa/sistema pode fazer?
-- 3- o que ela nao pode fazer?


-- USUARIO ADMINISTRADOR DO BANCO
-- o que faz um admin do projeto ? 
CREATE ROLE admin_medical_center
with login 
password 'admin123';

-- usuario do sistema (api//backend)
-- o sistema software da clinica propriamente dito
-- no futuro:
-- flask conecta no postgresql
-- usa esse usuario 
-- executa insert, select,update
-- coração da aplicacao 
create role app_medical_center 
with login
password 'app123';
-- usuario que o  flask vai utilizar no futuro

-- usuario somente leitura

create role leitura_medical_center
with login
password 'read123';
-- serve para relatorios,dashboards,bi,auditoriais,n pode mudar nada
-- concedendo permissoes(grant)

-- admin tem acesso total

grant all privileges on database medical_center to admin_medical_center;
-- controle total do administrador

-- nome do banco pode ser ajustado depois la no postgresql

-- usuario da aplicacao(quem vai usar, o CRUD-COMANDOS DO BANCO DE DADOS)

grant SELECT, INSERT, UPDATE
ON ALL TABLES IN SCHEMA public
TO app_medical_center;
-- ele nao pode apagar tabelas, nem mexer na estrutura
--  o sistema ele pode ler dados, cadastrar pacientes,atualizar consultas.  o sistema nao pode apagar tabelas,mudar estrutura e causar desastre

-- usuario leitura

GRANT SELECT
ON ALL TABLES IN SCHEMA public
TO leitura_medical_center;
-- leitura so consulta, ideal para relatorios de analises
-- garantir permissoes futuras(muito profissional)

ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT SELECT, INSERT,UPDATE
ON TABLES
TO APP_MEDICAL_CENTER;
-- garante que tabelas criadas no futuro ja tenha permissao correta
-- sem isso, ao criar nova tabela o sistema quebraria e ninguem entenderia o pq. banco de dados maduro


ALTER DEFAULT PRIVILEGES IN SCHEMA public
GRANT SELECT
ON TABLES
TO leitura_medical_center;




