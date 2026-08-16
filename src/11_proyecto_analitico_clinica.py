import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from conexion_ import Conexion
from mysql.connector import Error
try:
    _conexion = Conexion.obtener_conexion()
    if _conexion:
        query = """
                SELECT ct.id, pc.nombre AS paciente, pc.edad, ct.estado, 
                md.nombre AS medico,  md.especialidad, ROUND((pc.edad * 15.5)/10) AS monto, ct.fecha
                FROM schema.citas as ct
                INNER JOIN schema.medicos as md
                On ct.id_medico = md.id
                INNER JOIN schema.pacientes as pc
                On ct.id_paciente = pc.id
        """
        df = pd.read_sql(query, _conexion)
        df = df.drop_duplicates()
        df["fecha"] = pd.to_datetime(df["fecha"], errors="coerce")
        df = df.fillna({
            "edad" : df["edad"].median()
        })
        fig, ax = plt.subplots(2,2, figsize=(14,10))
        sns.countplot(data=df, x="estado", ax=ax[0,0])
        sns.histplot(
            data=df,
            x="edad",
             ax=ax[0,1]
        )
        sns.boxplot(x="edad", y="especialidad",
            data=df, ax = ax[1,0])
        sns.scatterplot(data=df, x="edad", y="monto", ax=ax[1,1], hue="estado")
        plt.tight_layout()
        plt.show()
        plt.savefig("dashboard_analitico_salud.png")
except Error as e:
    print(f"Error {e}")