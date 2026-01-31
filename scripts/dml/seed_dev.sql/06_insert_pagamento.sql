-- ==================================
-- DML: INSERÇÃO DE DADOS NA TABELA PAGAMENTO 
-- BANCO DE DADOS: MEDICAL CENTER
-- TABELA: PAGAMENTO 
-- =================================


    INSERT INTO pagamento(id_consulta,  valor,     tipo,              status)  VALUES
                         (   1,         200.00,  'Cartão de crédito', 'pago'),
                         (   2,         150.00,    'Pix',             'pago'),
                         (   3,         180.00,   'Dinheiro',         'pendente');

