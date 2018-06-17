# Descrição do projeto

Este projeto se trata de uma plataforma para adicionar jogos digitais.


# Pré-requisitos para rodar este projeto

* docker
* docker-compose


# Passos para a instalação

* Executar o comando 'docker-compose build' para criar a imagem no docker
* Executar o comando 'docker-compose run web rake db:create' para criar a base de dados
* Executar o comando 'docker-compose up' para subir a aplicação
* Quando a aplicação for iniciada abra um outro terminal e execute o comando 'sudo docker-compose run web bash', esse comando permite entrar no container para gerenciar o projetos por comandos.
* Estando no container, execute o comando 'rake db:migrate' para executar as migrações para criar as tabelas no banco de dados.
* Execute o comando 'rake db:seed' para criar instanciar objetos predefinidos.
* Depois de executar todos os passos anteriores a API esta pronta para ser consumida.


# Documentação da API

A documentação dessa API foi criada com o uso do Swagger e para acessá-la basta acessar 'http://localhost:3000/api'
