# detalha restricoes e regras de integridade

# Regras de Negócio – Medical Center

**Data:** 22/12/2025  
**Cliente:** Centro Médico Simulado  
**Analista:** Agatha Almeida  

## 1. Pacientes
- CPF deve ser único  
- Nome e data de nascimento são obrigatórios  
- Telefone, endereço e e-mail são opcionais  
- Histórico de consultas deve ser preservado

## 2. Médicos
- CRM deve ser único  
- Cada médico pode ter múltiplas especialidades  
- Agenda de disponibilidade deve ser respeitada  
- Médico só pode atender em horários disponíveis  

## 3. Consultas
- Sempre associadas a paciente e médico  
- Não podem se sobrepor na agenda do mesmo médico  
- Status permitido: agendada, realizada, cancelada  
- Consultas podem ser reagendadas ou canceladas  
- Tipo de consulta: presencial ou online  

## 4. Pagamentos
- Associados a uma consulta específica  
- Um pagamento por consulta  
- Tipos de pagamento: dinheiro, cartão, convênio  
- Status permitido: pago, pendente  

## 5. Regras Gerais
- Todas as chaves primárias devem ser únicas  
- Integridade referencial obrigatória entre tabelas  
- Dados devem seguir padronização (datas, telefones, e-mails)  
- Relatórios podem ser gerados no futuro, utilizando consultas SQL
