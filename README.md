# Descrição do projeto

Este projeto se trata de uma plataforma para adicionar jogos digitais.


# Pré-requisitos para rodar este projeto

* docker
* docker-compose


# Passos para a instalação

* Execute o comando abaixo para criar a imagem no docker<br>
<code>docker-compose build</code>
* Execute o comando abaixo para criar a base de dados
<code>docker-compose run web rake db:create</code>
* Execute o comando abaixo para subir a aplicação
<code>docker-compose up</code>
* Quando a aplicação for iniciada abra um outro terminal e execute o comando abaixo, esse comando permite entrar no container para gerenciar o projetos por comandos.
<code>sudo docker-compose run web bash</code>
* Estando no container, execute o comando abaixo para executar as migrações para criar as tabelas no banco de dados.
<code>rake db:migrate</code>
* Execute o comando abaixo para instanciar os objetos predefinidos.
<code>rake db:seed</code>
* Depois de executar todos os passos anteriores a API esta pronta para ser consumida.


# Documentação da API

A documentação dessa API foi criada com o uso do Swagger e para acessá-la use a url abaixo.
<code>http://localhost:3000/api</code>
