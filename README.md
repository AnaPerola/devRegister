# Welcome DevRegister

## 🏁 Objetivo:

- Usuário fazer um cadastro
- Cadastro informando nome, data nascimento, e-mail, senha
- Após as validações sera enviado esse cadastro para **DevChat**

## 🛠️ Tecnologias:

- [X]  Rails v. 7.0.2.3 
- [X]  Ruby v. 3.0.3 
- [X]  Docker
- [X]  Docker-compose
- [X]  Postgres

## Iniciando projeto

#### Siga essas etapas para inicializar o projeto DevRegister:

Crie um arquivo .env e inclua suas variaveis de ambiente.

Crie uma imagem para Ruby on Rails com o comando:

`docker-compose build`

Inicie o projeto executando:

`docker-compose up`

Crie o banco de dados executando:

`docker-compose run web rails db:create db:migrate`

Nice! 
Agora seu aplicativo Rails deve estar disponível em localhost:3000.

## TODO do projeto:

[X] Criacao do CRUD de User
[X] Criar tela Welcome após criação do usuario
[X] Instalar e configurar Devise
[] Implementar no heroku
[] Implementar Webhook

## Fluxo do projeto:
[X] welcome -> Cadastrar ou fazer login -> Usuario -> Lista de usuarios
