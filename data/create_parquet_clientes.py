import pandas as pd
import pyarrow as pa
import pyarrow.parquet as pq
from faker import Faker
import random

# Inicializa Faker
fake = Faker('pt_BR')

# Configurações
num_records = 1000
clientes_output_file = 'clientes_data.parquet'
produtos_output_file = 'produtos_data.parquet'
clientes_produtos_output_file = 'clientes_produtos_data.parquet'
categorias = ['Eletrônicos', 'Roupas', 'Móveis', 'Alimentos', 'Brinquedos']

# Gera dados fictícios para clientes
clientes_data = []
for i in range(1, num_records + 1):
    id = i
    nome = fake.first_name()
    sobrenome = fake.last_name()
    data_nascimento = fake.date_of_birth(minimum_age=18, maximum_age=90).strftime('%Y-%m-%d')
    email = fake.email()
    telefone = fake.phone_number()
    endereco = fake.street_address()
    cidade = fake.city()
    estado = fake.state_abbr()
    cep = fake.zipcode()
    data_criacao = fake.date_time_this_year().strftime('%Y-%m-%d %H:%M:%S')

    clientes_data.append([
        id, nome, sobrenome, data_nascimento, email, telefone, endereco, cidade, estado, cep, data_criacao
    ])

# Cria um DataFrame do pandas para clientes
clientes_df = pd.DataFrame(clientes_data, columns=[
    'id', 'nome', 'sobrenome', 'data_nascimento', 'email', 'telefone', 'endereco', 'cidade', 'estado', 'cep',
    'data_criacao'
])

# Converte o DataFrame para Parquet
clientes_table = pa.Table.from_pandas(clientes_df)
pq.write_table(clientes_table, clientes_output_file)

print(f'{num_records} registros de clientes foram gerados e salvos em {clientes_output_file}')

# Gera dados fictícios para produtos
produtos_data = []
for i in range(1, num_records + 1):
    id = i
    nome = fake.word().capitalize()
    categoria = random.choice(categorias)
    descricao = fake.sentence(nb_words=10)
    preco = round(random.uniform(10, 5000), 2)
    quantidade_estoque = random.randint(0, 100)
    data_adicao = fake.date_time_this_year().strftime('%Y-%m-%d %H:%M:%S')

    produtos_data.append([
        id, nome, categoria, descricao, preco, quantidade_estoque, data_adicao
    ])

# Cria um DataFrame do pandas para produtos
produtos_df = pd.DataFrame(produtos_data, columns=[
    'id', 'nome', 'categoria', 'descricao', 'preco', 'quantidade_estoque', 'data_adicao'
])

# Converte o DataFrame para Parquet
produtos_table = pa.Table.from_pandas(produtos_df)
pq.write_table(produtos_table, produtos_output_file)

print(f'{num_records} registros de produtos foram gerados e salvos em {produtos_output_file}')

# Gera dados fictícios para produtos de clientes
clientes_ids = clientes_df['id'].tolist()
clientes_produtos_data = []
for i in range(1, num_records + 1):
    produto_id = i
    cliente_id = random.choice(clientes_ids)
    produto_nome = fake.word().capitalize()
    quantidade = random.randint(1, 10)
    data_compra = fake.date_time_this_year().strftime('%Y-%m-%d %H:%M:%S')

    clientes_produtos_data.append([
        produto_id, cliente_id, produto_nome, quantidade, data_compra
    ])

# Cria um DataFrame do pandas para produtos de clientes
clientes_produtos_df = pd.DataFrame(clientes_produtos_data, columns=[
    'produto_id', 'cliente_id', 'produto_nome', 'quantidade', 'data_compra'
])

# Converte o DataFrame para Parquet
clientes_produtos_table = pa.Table.from_pandas(clientes_produtos_df)
pq.write_table(clientes_produtos_table, clientes_produtos_output_file)

print(f'{num_records} registros de produtos por cliente foram gerados e salvos em {clientes_produtos_output_file}')
