# descricao do projeto e objetivos


# 🏥 Medical Center Database

## 📌 Visão Geral
Este projeto consiste no desenvolvimento de um banco de dados relacional
para o gerenciamento de uma clínica médica (Medical Center).

O banco foi projetado para atender funcionalidades reais de um sistema médico,
como cadastro de pacientes, médicos, especialidades, agendamento de consultas
e controle de pagamentos.

## 🎯 Objetivo do Projeto
- Modelar e implementar um banco de dados profissional
- Garantir integridade referencial e organização dos dados
- Preparar o banco para integração futura com um backend via API

## 🧠 Modelagem
O banco de dados foi desenvolvido a partir de:
- Modelagem conceitual
- Modelagem lógica
- Modelagem física

Utilizando boas práticas de normalização e relacionamento entre entidades.

## 🗄 Estrutura do Banco de Dados

### Principais tabelas
- `paciente`
- `medico`
- `especialidade`
- `medico_especialidade`
- `consulta`
- `pagamento`

### Relacionamentos
- Um paciente pode ter várias consultas
- Um médico pode possuir várias especialidades
- Uma consulta está associada a um paciente, médico e especialidade
- Cada consulta pode possuir um pagamento associado

## 📂 Organização dos Scripts

```text
scripts/
├── ddl/      → Criação da estrutura do banco
├── dml/
│   ├── base.sql      → Dados essenciais do sistema
│   └── seed_dev.sql → Dados fictícios para testes
├── dcl/      → Controle de usuários e permissões
├── dql/      → Consultas reais do sistema
└── views/    → Views para consumo pelo backend

# 🏥 Medical Center Database

## 📌 Visão Geral
Este projeto consiste no desenvolvimento de um banco de dados relacional
para o gerenciamento de uma clínica médica (Medical Center).

O banco foi projetado para atender funcionalidades reais de um sistema médico,
como cadastro de pacientes, médicos, especialidades, agendamento de consultas
e controle de pagamentos.

## 🎯 Objetivo do Projeto
- Modelar e implementar um banco de dados profissional
- Garantir integridade referencial e organização dos dados
- Preparar o banco para integração futura com um backend via API

## 🧠 Modelagem
O banco de dados foi desenvolvido a partir de:
- Modelagem conceitual
- Modelagem lógica
- Modelagem física

Utilizando boas práticas de normalização e relacionamento entre entidades.

## 🗄 Estrutura do Banco de Dados

### Principais tabelas
- `paciente`
- `medico`
- `especialidade`
- `medico_especialidade`
- `consulta`
- `pagamento`

### Relacionamentos
- Um paciente pode ter várias consultas
- Um médico pode possuir várias especialidades
- Uma consulta está associada a um paciente, médico e especialidade
- Cada consulta pode possuir um pagamento associado

## 📂 Organização dos Scripts

```text
scripts/
├── ddl/      → Criação da estrutura do banco
├── dml/
│   ├── base.sql      → Dados essenciais do sistema
│   └── seed_dev.sql → Dados fictícios para testes
├── dcl/      → Controle de usuários e permissões
├── dql/      → Consultas reais do sistema
└── views/    → Views para consumo pelo backend
Essa separação garante segurança e organização no uso do banco.


📊 Views Disponíveis

As views foram criadas para facilitar o consumo dos dados pelo backend:

vw_agenda_medico

vw_prontuario_paciente

vw_pagamentos_consulta

🧪 Ambiente de Desenvolvimento

PostgreSQL

pgAdmin

VS Code

Git / GitHub

🚀 Próximos Passos

Desenvolvimento do backend utilizando Flask

Criação de API REST

Integração com o banco de dados

Autenticação e regras de negócio



📌 Esse README está **nível mercado real**.

---

## 3️⃣ Revisão rápida (checklist)

Antes de commitar, confirme:
✔ README.md está na raiz  
✔ Conteúdo salvo  
✔ Não tem erro de digitação grosseiro  

---

## 4️⃣ Commit do README

### 🔍 Ver status
No terminal, na raiz do projeto:

```bash
git status



📌 Esse README está **nível mercado real**.

---

## 3️⃣ Revisão rápida (checklist)

Antes de commitar, confirme:
✔ README.md está na raiz  
✔ Conteúdo salvo  
✔ Não tem erro de digitação grosseiro  

---

## 4️⃣ Commit do README

### 🔍 Ver status
No terminal, na raiz do projeto:

```bash
git status

Você deve ver algo como:
Untracked files:
  README.md






