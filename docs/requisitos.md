# descreve funcionalidades e informações do banco

# Requisitos do Banco de Dados – Medical Center

**Data:** 22/12/2025  
**Cliente:** Centro Médico Simulado  
**Analista:** Agatha Almeida  

## 1. Objetivo do Sistema
O banco de dados tem como objetivo gerenciar todas as informações de um centro médico multi-especialidade, incluindo:

- Cadastro de pacientes  
- Cadastro de médicos e suas especialidades  
- Registro de consultas  
- Controle de pagamentos  

O sistema será a base para futura integração com backend e geração de relatórios.

---

## 2. Escopo do Banco de Dados
- **Pacientes**  
  - Nome completo  
  - CPF (único)  
  - Data de nascimento  
  - Telefone  
  - Endereço  
  - E-mail  
  - Histórico completo de consultas  

- **Médicos**  
  - Nome completo  
  - CRM (único)  
  - Especialidade(s) (múltiplas)  
  - Telefone  
  - Agenda de disponibilidade  

- **Consultas**  
  - Data e hora  
  - Paciente  
  - Médico  
  - Status (agendada, realizada, cancelada)  
  - Tipo (presencial ou online)  

- **Pagamentos**  
  - Valor  
  - Tipo (dinheiro, cartão, convênio)  
  - Status (pago, pendente)  
  - Vínculo com uma consulta específica  

---

## 3. Regras de Dados Gerais
- CPF do paciente deve ser único  
- CRM do médico deve ser único  
- Consultas não podem se sobrepor na agenda do mesmo médico  
- Formatos padronizados:  
  - Data: `YYYY-MM-DD`  
  - Telefone: `(xx) xxxx-xxxx`  
  - E-mail: `exemplo@dominio.com`  
- Informações obrigatórias: Nome, CPF, CRM  
- Informações opcionais: Telefone, endereço, e-mail

