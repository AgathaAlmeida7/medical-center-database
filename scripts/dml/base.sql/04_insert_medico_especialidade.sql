-- =======================================
-- DML- RELACIONAMENTO ENTRE MÉDICOS E ESPECIALIDADES
-- TABELA ASSOCIATIVA : MEDICO_ESPECIALIDADE
-- BANCO: MEDICAL CENTER

-- MÉDICO 01: JOÃO SILVA

 INSERT INTO medico_especialidade(id_medico,id_especialidade) VALUES(1,1),-- clinico geral
(1,2); -- cardiologista

-- MEDICO 02: MARIA OLIVEIRA

 INSERT INTO medico_especialidade(id_medico,id_especialidade)
 VALUES(2,3); --  ginecologista

 -- MEDICO 03: Carlos pereira

 INSERT INTO medico_especialidade(id_medico,id_especialidade)
 VALUES(3,4) -- ortopedista

 -- MEDICO 04- ANA COSTA

 INSERT INTO medico_especialidade(id_medico,id_especialidade)
 VALUES(4,5) -- pediatria

 -- MEDICO 05: PEDRO SANTOS

 INSERT INTO medico_especialidade(id_medico,id_especialidade)
 VALUES(5,6) -- dermartologista


 -- MEDICO 06 -LUCIANA ROCHA

 INSERT INTO medico_especialidade(id_medico,id_especialidade)
 VALUES(6,1)
 -- CLINICO GERAL


-- OBS : UM FK SEMPRE TEM QUE REFERENCIAR UM PK

 -- se eu tivesse feito so um insert into e botado de uma vez representando cada um nao daria no mesmo do que ficar repetindo varios insert into? ou dessa maneira foi melhor?
