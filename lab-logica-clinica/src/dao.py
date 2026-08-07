from conexion_ import Conexion
from modelos import Medico
from mysql.connector import Error
class MedicoDAO:
    @staticmethod
    def seleccionar():
        try:
            _conexion = Conexion.obtener_conexion()
            if _conexion is None:
                print("Conexión es None")
                return []
            with _conexion.cursor() as cursor:
                cursor.execute("SELECT id, nombre, colegiatura, especialidad FROM schema.medicos ORDER BY nombre")
                resultados = cursor.fetchall()
                medicos = []
                for resultado in resultados:
                    medico = Medico(id_ = resultado[0] , nombre = resultado[1], 
                            colegiatura = resultado[2], especialidad = resultado[3])
                    medicos.append(medico)
                cursor.close()
                return medicos
        except Error as e:
            print(f"Error {e}")
            return []
    @staticmethod
    def insertar(medico):
        try:
            _conexion = Conexion.obtener_conexion()
            if  not(_conexion is None):
                with _conexion.cursor() as cursor:
                    query = """
                    INSERT INTO schema.medicos(nombre, colegiatura, especialidad)
                    VAlUES (%s, %s, %s)
                    """
                    cursor.execute(query, (medico.nombre, medico.colegiatura, medico.especialidad))
                    _conexion.commit()
                    cursor.close()
                    print("Se inserto correctamente al médico")
        except Error as e:
            print(f"Error {e}")
    @staticmethod
    def buscar_por_colegiatura(colegiatura):
        try:
            _conexion = Conexion.obtener_conexion()
            if  not(_conexion is None):
                with _conexion.cursor() as cursor:
                    query = """
                    SELECT id FROM schema.medicos WHERE colegiatura = %s
                    """
                    cursor.execute(query, (colegiatura, ))
                    resultado = cursor.fetchone()
                    cursor.close()
                    return True if resultado is not None else False
        except Error as e:
            print(f"Error {e}")