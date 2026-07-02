import pyodbc
import pandas as pd

print("1 - Importou bibliotecas")

conexao = pyodbc.connect(
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=DESKTOP-TR3B0B0\\SQLEXPRESS;"
    "DATABASE=EstudosDados;"
    "Trusted_Connection=yes;"
)

print("2 - Conectou ao banco")

consulta = "SELECT * FROM Alunos"

print("3 - Consulta criada")

df = pd.read_sql(consulta, conexao)

print("4 - DataFrame criado")

print(df)

conexao.close()

print("5 - Conexão encerrada")
