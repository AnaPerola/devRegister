FROM ruby:3.0.3
#Atualizando servidor e instalando pacotes necessarios
RUN apt-get update -qq && apt-get install -y curl libpq-dev nodejs yarn postgresql-client && apt-get clean

#Diretorio onde irei trabalhar
WORKDIR /www/devregister

#Copiando aplicacao local para dentro do container
COPY Gemfile /www/devregister/Gemfile
COPY Gemfile.lock /www/devregister/Gemfile.lock
COPY . /www/devregister/

RUN bundle install

#Adicionando scripts para ser executado no start do container
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

#Configurando o processo principal para executar o projeto
CMD ["rails", "server", "-b", "0.0.0.0"]
