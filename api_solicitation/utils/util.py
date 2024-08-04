from datetime import datetime
import psycopg2


def verify_token(cpf, token, logger):

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
        logger.info("Search data in table")
        query = "SELECT validate_token FROM solicitation WHERE token = %s AND cpf = %s;"
        cur.execute(query, (token, cpf))
        result = cur.fetchone()

        date_validate_token = result[0]
        now = datetime.now()

        # Verificar se a diferença é maior que um dia
        if date_validate_token > now:
            return True
        else:
            return False

    except Exception as e:
        print(f"Erro ao acessar o banco de dados: {e}")
        return False

    finally:
        cur.close()
        conn.close()

