<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>Banco de Dados</title>
</head>       

<body>
<h1 align="center">Trabalho de Banco de Dados Individual</h1>

<h2>🖥️ Projeto da Delegacia</h2>
<p>Este projeto envolve a criação de um banco de dados chamado "delegacia" para gerenciar informações relacionadas a delegacias, denúncias e denunciantes. Abaixo está uma breve descrição dos componentes do projeto:</p>

<h2><strong>🏷️ Tabelas do Banco de Dados</strong></h2>

<h3><strong>Tabela delegacia</strong></h3>
<p>delegacia_id: Identificação única da delegacia (chave primária).</p>
<p>del_nome: Nome da delegacia.</p>
<p>del_endereço: Endereço da delegacia.</p>
<p>del_telefone: Número de telefone da delegacia.</p>


<h3><strong>Tabela denuncia</strong></h3>
<p>denuncia_id: Identificação única da denúncia (chave primária).</p>
<p>den_dt_data: Data da denúncia.</p>
<p>den_descri: Descrição da denúncia.</p>
<p>den_local: Local da denúncia.</p>
<p>fk_delegacia_id: Chave estrangeira que se relaciona com a tabela "delegacia" (chave primária).</p>


<h3><strong>Tabela denunciante</strong></h3>
<p>denunciante_id: Identificação única do denunciante (chave primária).</p>
<p>d_nome: Nome do denunciante.</p>
<p>d_cpf: CPF do denunciante.</p>
<p>d_endereço: Endereço do denunciante.</p>
<p>d_telefone: Número de telefone do denunciante.</p>
<p>d_data_nasc: Data de nascimento do denunciante.</p>

<h2><strong>✏️ Inserção de Dados</strong></h2>
<p>Foram inseridos dados de exemplo nas tabelas usando as instruções SQL, como mostrado no script SQL fornecido.</p>

<h2><strong>🔍 Consultas SQL</strong></h2>
<p>Foram realizadas duas consultas SQL para demonstrar a funcionalidade do banco de dados:</p>
<p>Consulta de Denúncias de Homicídio</p>
<p>Retorna a data e o nome do denunciante de todas as denúncias de homicídio, ordenadas pela data da denúncia em ordem decrescente.</p>
<p>Consulta de Denunciantes na Delegacia Centro com CPF começando com "123"</p>
<p>Retorna o nome e o endereço dos denunciantes que fizeram denúncias na "Delegacia Centro" e cujo CPF começa com "123", ordenados pelo nome do denunciante.</p>

<img src="C:\vscode\ModeloConceitualBD.png" alt="Modelo Conceitual do Banco de Dados">

</body>
</html>