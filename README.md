# Projeto da Delegacia - README

Este projeto envolve a criação de um banco de dados chamado "delegacia" para gerenciar informações relacionadas a delegacias, denúncias e denunciantes. Abaixo está uma breve descrição dos componentes do projeto:

## Tabelas do Banco de Dados

### Tabela "delegacia"

delegacia_id: Identificação única da delegacia (chave primária).
del_nome: Nome da delegacia.
del_endereço: Endereço da delegacia.
del_telefone: Número de telefone da delegacia.

### Tabela "denuncia"

denuncia_id: Identificação única da denúncia (chave primária).
den_dt_data: Data da denúncia.
den_descri: Descrição da denúncia.
den_local: Local da denúncia.
fk_delegacia_id: Chave estrangeira que se relaciona com a tabela "delegacia" (chave primária).

### Tabela "denunciante"

denunciante_id: Identificação única do denunciante (chave primária).
d_nome: Nome do denunciante.
d_cpf: CPF do denunciante.
d_endereço: Endereço do denunciante.
d_telefone: Número de telefone do denunciante.
d_data_nasc: Data de nascimento do denunciante.

## Inserção de Dados

Foram inseridos dados de exemplo nas tabelas usando as instruções SQL, como mostrado no script SQL fornecido.

## Consultas SQL

Foram realizadas duas consultas SQL para demonstrar a funcionalidade do banco de dados:

Consulta de Denúncias de Homicídio

Retorna a data e o nome do denunciante de todas as denúncias de homicídio, ordenadas pela data da denúncia em ordem decrescente.
Consulta de Denunciantes na Delegacia Centro com CPF começando com "123"

Retorna o nome e o endereço dos denunciantes que fizeram denúncias na "Delegacia Centro" e cujo CPF começa com "123", ordenados pelo nome do denunciante.

## Como Executar as Consultas

Você pode executar essas consultas usando um sistema de gerenciamento de banco de dados PostgreSQL ou outra ferramenta de sua escolha.

# Autor
Nome: Felipe Balbino Ribeiro
Contato: felipebalbinoribeiro@gmail.com
