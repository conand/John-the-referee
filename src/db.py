from sqlalchemy import create_engine, text
from config import DB_USERNAME, DB_PASSWORD, DB_HOST, DB_NAME, DB_UNIX_SOCKET, DB_ECHO_QUERIES

engine = create_engine("mysql+pymysql://{0}:{1}@{2}/{3}?unix_socket={4}".format(
    DB_USERNAME, DB_PASSWORD, DB_HOST, DB_NAME, DB_UNIX_SOCKET), pool_size=20, pool_recycle=3600, echo=DB_ECHO_QUERIES)
connection = engine.connect()


def search_uniform(uniform_name):
    query = "SELECT * FROM uniforms WHERE available=True AND name = \'" + uniform_name + "\'"
    return connection.execute(query).fetchone()


def get_all_uniforms():
    query = "SELECT * FROM uniforms WHERE available=True"
    return connection.execute(query).fetchall()


def get_uniform_by_id(id_uniform):
    query = text(
        "SELECT * FROM uniforms WHERE available=True AND id=:id_uniform")
    params = {"id_uniform": id_uniform}

    return connection.execute(query, params).fetchone()
