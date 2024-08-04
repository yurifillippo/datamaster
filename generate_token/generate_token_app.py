from flask import Flask, request, jsonify
import uuid
from datetime import datetime, timedelta
from util.validacao_cpf import validaCpf
import psycopg2
import logging
import os

# Configuração do logger
logging.basicConfig(level=logging.DEBUG)
logger = logging.getLogger(__name__)

validCpf = validaCpf()
app = Flask(__name__)


def insert_data(cpf, token, datetime_today, time_validate):

    logger.info("Creating database connection")

    try:
        conn = psycopg2.connect(
                host="postgres",
                port=5432,
                database="request_manager_product",
                user="postgres",
                password="11930143605")

        logger.info("Connection created successfully")

        logger.info("Creating postgres cursor")
        cur = conn.cursor()

        # Execute o comando SQL INSERT
        logger.info("Inserting data into the table")
        sql_insert = "INSERT INTO solicitation (cpf, token, time_solicitation, validate_token) VALUES (%s, %s, %s, %s)"
        values_data = (cpf, token, datetime_today, time_validate)

        logger.info("Executing data commit")
        cur.execute(sql_insert, values_data)
        conn.commit()

        logger.info("Insertion completed successfully")

        logger.info("Closing connection with database")
        cur.close()
        conn.close()

    except Exception as e:
        logger.exception(f"An error occurred while requesting the response: {e}")


@app.route('/gerar_token', methods=['POST'])
def gerar_token():
    logger.info("Receiving data to generate token")
    data = request.get_json()
    cpf = data.get('cpf')

    logger.info("Performing valid CPF verification")
    cpf_verify = validCpf.validar_cpf(cpf)
    datetime_today = datetime.now()
    time_validate = datetime_today + timedelta(days=1)

    if cpf_verify == True:
        logger.info("CPF successfully validated")
        token = str(uuid.uuid4())

        logger.info("Inserting data into the database")
        insert_data(cpf, token, datetime_today, time_validate)
        logger.info("Data inserted into the control table")

        return jsonify({'cpf': cpf, 'token': token, 'time_solicitation': datetime_today,
                        'validate_token': time_validate}), 200
    else:
        return jsonify({'error': 'Invalid CPF'}), 400


if __name__ == '__main__':
    port = int(os.getenv('PORT', 5002))  # Use a variável de ambiente PORT ou 5002 como padrão
    app.run(host='0.0.0.0', port=port)
