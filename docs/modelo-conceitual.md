# Modelo Conceitual – Medical Center

## Objetivo
Este documento descreve o modelo conceitual do banco de dados do centro médico,
representando as entidades principais do sistema e seus relacionamentos,
sem considerar aspectos técnicos de implementação.

---

## Entidades

- **Paciente**  
  Representa os pacientes atendidos pelo centro médico.

- **Médico**  
  Representa os profissionais de saúde que realizam atendimentos.

- **Especialidade**  
  Representa as especialidades médicas disponíveis no centro médico.

- **Consulta**  
  Representa os atendimentos realizados entre pacientes e médicos.

- **Pagamento**  
  Representa os pagamentos referentes às consultas realizadas.

---

## Relacionamentos

- **Paciente realiza Consulta**  
  Cardinalidade: 1:N  
  Um paciente pode realizar várias consultas, mas cada consulta pertence a um único paciente.

- **Médico atende Consulta**  
  Cardinalidade: 1:N  
  Um médico pode atender várias consultas, mas cada consulta é atendida por apenas um médico.

- **Médico possui Especialidade**  
  Cardinalidade: N:N  
  Um médico pode possuir várias especialidades, e uma especialidade pode estar associada a vários médicos.

- **Consulta gera Pagamento**  
  Cardinalidade: 1:1  
  Cada consulta gera um único pagamento, e cada pagamento está vinculado a uma única consulta.
