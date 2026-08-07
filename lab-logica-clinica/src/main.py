from conexion_ import Conexion
from modelos import Medico
from dao import MedicoDAO
from mysql.connector import Error
def mostrar_todos():
    medicos = MedicoDAO.seleccionar()
    if not medicos:
        print("No hay medicos :c")
        return
    for medico in medicos:
        print(medico)
def registrar_medico():
    nombre = input("Coloque el nombre del médico: ")
    while True:
        try:
            colegiatura = int(input("Coloque la colegiatura del médico: "))
            if MedicoDAO.buscar_por_colegiatura(colegiatura):
                print("Colegiatura ya existente, vuelva a intentar")
                continue
            break
        except ValueError:
            print("Formato incorrecto, ingrese un entero")
            continue
    especialidad = input("Coloque la especialidad del médico: ")
    medico = Medico(None, nombre, colegiatura, especialidad)
    MedicoDAO.insertar(medico)
def menu_interactivo():
    while True:
        print("\n" + "="*60)
        print("SISTEMA DE GESTIÓN DE MEDICOS")
        print("="*60)
        print("1) Ver lista de médicos formateado")
        print("2) Registrar un nuevo médico")
        print("3) Salir del sistema")
        print("="*60)
        opcion = input("Elije una opcion: ")
        match(opcion) :
            case "1":
                mostrar_todos()
                print("*"*60)
            case "2":
                registrar_medico()
                print("*"*60)
            case "3":
                Conexion.cerrar_conexion()
                print("Cerrando conexion")
                break
            case _:
                print("Opcion no disponible, vuelva a intentar")
if  __name__ == "__main__":
    try:
        Conexion.obtener_conexion()
        menu_interactivo()
    except Error as e:
        print(f"Error {e}")
