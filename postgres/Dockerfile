# Use a imagem base do PostgreSQL
FROM postgres:latest

# Atualize o gerenciador de pacotes e instale o Vim
RUN apt-get update && apt-get install -y vim

# Copie o arquivo SQL para dentro do contêiner
COPY create_table.sql /docker-entrypoint-initdb.d/

# Opcional: Defina variáveis de ambiente para configurar o PostgreSQL
ENV POSTGRES_DB="request_manager_product"
ENV POSTGRES_USER="postgres"
ENV POSTGRES_PASSWORD="11930143605"

COPY config.json /home/

# Opcional: Exponha a porta padrão do PostgreSQL (5432)
EXPOSE 5432