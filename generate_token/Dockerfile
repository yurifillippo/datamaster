FROM python:3.12.0

WORKDIR /generate_token

COPY config.json /home/

COPY requeriments.txt .

RUN pip install --no-cache-dir -r requeriments.txt

COPY . .

EXPOSE 5002
EXPOSE 5003

# Use o bash como shell padrão
#CMD ["/bin/bash", "-c", "python generate_token_app.py"]
#Comando para iniciar o Flask nas duas portas
CMD ["python", "generate_token_app.py"]