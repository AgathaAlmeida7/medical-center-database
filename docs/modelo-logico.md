# explicação tecnica do diagrama logico

# Descrição de tabelas, relacionamentos,decisoes de modelagem

# INTRODUÇÃO:

# Este documento descreve o modelo lógico do banco de dados do sistema de gerenciamento de uma clínica médica.O modelo lógico foi elaborado a partir do modelo conceitual aprovado na etapa anterior e tem como objetivo definir a estrutura das tabelas, seus atributos, chaves primárias, chaves estrangeiras e relacionamentos, respeitando as regras de negócio levantadas.

# VISÃO GERAL DO MODELO LÓGICO

# O modelo lógico é composto pelas seguintes tabelas principais:
# -Paciente //- Médico // - Especialidade// - Consulta// - Pagamento // - Médico_especialidade(tabela associativa).A tabela CONSULTA atua como o núcleo do sistema, pois conectta PACIENTES,MÉDICOS E PAGAMENTOS.

# TABELAS E RELACIONAMENTOS

# 3.1 Paciente : (A tabela armazena os dados cadastrais dos pacientes atendidos pela clínica. -Cada paciente é identificado de forma unica. - Um paciente pode realizar várias consultas ao longo do tempo.)  Relacionamento: Paciente 1:N consulta

# 3.2 Médico

# Tabela que armazena as informações dos profissionais da clinica. (Um médico pode atender varias consultas. Um medico pode possuir mais de uma especialidade)
# Relacionamentos: Médico 1:N consulta/// Médic 1:N medico_especialidade

# 3.3 Especialidade 

# Tabela que representa as áreas médicas atendidas pela clinica. - uma especialidade pode estar associada a vários médicos.// Relacionamento: Especialidade 1:N medico_especialidade

# 3.4 Médico_especialiade(tabela associativa)

# A tabela resolve o relacionamento N:N existente no modelo conceitual entre médicco e especialidade. - Cada registro associa um médico a uma especialidade// um medico pode aparecer varias vezes nesta tabela// uma especialidade pode aparecer varias vezes nesta tabela.// No modelo logico,o relacionamento N:N é transformado em dois relacionamentos 1:N

# 3.5 Consulta

# Tabela que registra os atendimentos realizados na clínica. -Cada consulta está associada a um paciente//cada consulta é atendida por  um médico//cada consulta gera um unico pagamento// Relacionamentos: - Paciente 1:N consulta // Medico 1:N consulta// consulta 1:1 pagamento

# 3.6 PAGAMENTO

# Tabela que armazena as informações financeiras referentes as consultas. - Cada pagamento está vinculado a uma unica consulta.//- Não existem pagamentos sem consulta associada. Relacionamento: consulta 1:1 pagamento







































