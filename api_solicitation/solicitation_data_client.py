from flask import Flask, request, jsonify
import requests
import logging
from utils.util import verify_token
from kafka import KafkaProducer
import json


app = Flask(__name__)

# Configuração do logger
logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)

# Configuração do Kafka
KAFKA_BROKER_URLS = 'kafka:9092'   # A URL do seu broker Kafka
KAFKA_TOPIC = 'solicitationtopic'  # Nome do tópico

# Inicializando o produtor Kafka
producer = KafkaProducer(
    bootstrap_servers=KAFKA_BROKER_URLS,
    value_serializer=lambda v: json.dumps(v).encode('utf-8')
)

# URL do NGINX como balanceador de carga
NGINX_URL = 'http://nginx:5004'

@app.route('/solicitation_token', methods=['POST'])
def solicitation_token():
    try:
        logger.info(f"Receiving data information")

        #Collects data in json format
        data = request.json
        nome_solic = data.get('nome')
        cpf = data.get('cpf')

        logger.info(f"Name: {nome_solic}")
        logger.info(f"CPF: {cpf}")

        #Call the API to obtain the token
        logger.info(f"generate_token API call")
        try:
            response = requests.post(f'{NGINX_URL}/gerar_token', json={'cpf': cpf})
            logger.info(f"Response Collected Successfully")
        except Exception as e:
            logger.exception(f"An error occurred while requesting the response: {e}")

        #Returned 200:
        if response.status_code == 200:
            token = response.json().get('token')

            # Imprime o token no terminal
            logger.info(f"Token received for CPF {cpf}: {token}")
            logger.info("Validating token")

            valid_token = verify_token(cpf, token, logger)

            if valid_token == True:

                logger.info(f"Sending Kafka message in topic {KAFKA_TOPIC}")
                # Envia os dados para o Kafka
                kafka_message = {"name": nome_solic, "cpf": cpf, "token": token}
                producer.send(KAFKA_TOPIC, kafka_message)
                producer.flush()
                logger.info(f"Message sent successfully")

                logger.info("Token successfully validated")
                return jsonify({"name": nome_solic, "cpf": cpf, "token": token, "valid token": 1,
                                "message_valid_token": "Token successfully validated"}), 200
            else:
                logger.info("Expired token")
                return jsonify({"name": nome_solic, "cpf": cpf, "token": token, "valid token": 0,
                                "message_valid_token": "Token successfully validated"}), 400

        #Returned 500:
        else:
            logger.error("Failed to obtain token")
            return jsonify({"error": "Failed to get token"}), 500

    except Exception as e:
        logger.exception(f"An error occurred while requesting the token: {e}")
        return jsonify({"error": "Internal Server Error"}), 500


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5001)

