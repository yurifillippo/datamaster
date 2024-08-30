# Usando a imagem base do Spark
FROM bde2020/spark-base:3.1.2-hadoop3.2

# Diretório de trabalho
WORKDIR /app

# Adiciona o diretório do Spark ao PATH
ENV PATH="/spark/bin:${PATH}"

# Copia os arquivos de código para o container
COPY ./app/ /app

# Comando para rodar a aplicação
CMD ["/spark/bin/spark-submit", "--driver-memory", "2g", "/app/main.py"]