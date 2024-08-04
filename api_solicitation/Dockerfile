FROM python:3.11.0

# Instale o pacote do bash
RUN apt-get update && apt-get install -y bash

WORKDIR /solicitation_token

COPY requeriments.txt .

RUN pip install --no-cache-dir -r requeriments.txt

# Defina a variável de ambiente FLASK_DEBUG
ENV FLASK_DEBUG=0

COPY . .

EXPOSE 5002

# Use o bash como shell padrão
CMD ["/bin/bash", "-c", "python solicitation_data_client.py"]
