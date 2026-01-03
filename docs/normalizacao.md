# NORMALIZAÇÃO DO BANCO DE DADOS

## INTRODUÇÃO

# Este documento descreve o processo de normalização aplicado ao modelo lógico do banco de dados da clínica médica , com o objetivo de eliminar redundâncias,evitar anomalias de inserção,atualização e exclusão, e garantir a integridade dos dados.



## PRIMEIRA FORMA NORMAL (1FN)

# Todas as tabelas possuem atributos atômicos. Informações como especialidades dos médicos foram separadas em uma tabela associativa, evitando campos multivalorados.


## SEGUNDA FORMAL NORMAL (2FN)

# A tabela medico_especialidade possui chave primaria compostat e não apresenta dependencias parciais, pois na existem atributos que dependam apenas de parte da chave.



## TERCEIRA FORMA NORMAL (3FN)

# Informações financeiraas foram separadas da tabela consulta, evitando dependencias transitivas. Da mesma forma, dados de especialidade não são armazenados diretamente na tabela medico.


## CONCLUSÃO

#  o  modelo lógico apresentado encontra-se normalizado até a terceira forma normal(3FN) , garantindo organização,consistencia e facilidade de manuntenção do banco de dados.
















