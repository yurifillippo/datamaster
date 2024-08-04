# Nome do projeto
PROJECT_NAME = datamaster

# Versão do projeto
VERSION = 1.0

# Diretórios dos serviços
API_SOLICITATION_DIR = api_solicitation
GENERATE_TOKEN_DIR = generate_token
POSTGRES_DIR = postgres

# Nome das imagens Docker
API_SOLICITATION_IMAGE = $(PROJECT_NAME)_api_solicitation:$(VERSION)
GENERATE_TOKEN_IMAGE = $(PROJECT_NAME)_generate_token:$(VERSION)
POSTGRES_IMAGE = $(PROJECT_NAME)_postgres:$(VERSION)

.PHONY: all build up down clean

# Comando padrão
all: build up

# Construir todas as imagens
build: build-api-solicitation build-generate-token build-postgres

build-api-solicitation:
	docker build -t $(API_SOLICITATION_IMAGE) $(API_SOLICITATION_DIR)

build-generate-token:
	docker build -t $(GENERATE_TOKEN_IMAGE) $(GENERATE_TOKEN_DIR)

build-postgres:
	docker build -t $(POSTGRES_IMAGE) $(POSTGRES_DIR)

# Subir os serviços com Docker Compose
up:
	docker-compose up --build -d

# Derrubar os serviços com Docker Compose
down:
	docker-compose down

# Limpar as imagens Docker criadas
clean:
	docker rmi $(API_SOLICITATION_IMAGE) $(GENERATE_TOKEN_IMAGE) $(POSTGRES_IMAGE)
