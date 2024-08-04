CREATE TABLE IF NOT EXISTS solicitation (
        id SERIAL PRIMARY KEY,
        cpf VARCHAR(11),
        time_solicitation TIMESTAMP,
        token UUID,
        validate_token TIMESTAMP);

