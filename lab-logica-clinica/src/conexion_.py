import os
import mysql.connector
from mysql.connector import Error
from dotenv import load_dotenv
load_dotenv()
class Conexion:
    _HOST = os.getenv("DB_HOST")
    _USER = os.getenv("DB_USER")
    _PASSWORD = os.getenv("DB_PASSWORD")
    _DATABASE = os.getenv("DB_NAME")
    _conexion = None

    @classmethod
    def obtener_conexion(cls):
        try:
            if cls._conexion is None or not cls._conexion.is_connected():
                cls._conexion = mysql.connector.connect(
                    host=cls._HOST,
                    user=cls._USER,
                    password=cls._PASSWORD,
                    database=cls._DATABASE
                )
                print("Nueva conexión TCP/IP establecida con MySQL.")
            return cls._conexion
        except Error as e:
            print(f"Error al conectar a la base de datos: {e}")
            return None
    @classmethod
    def cerrar_conexion(cls):
        if cls._conexion and cls._conexion.is_connected():
            cls._conexion.close()
            cls._conexion = None
            print("Conexión a MySQL cerrada correctamente.")