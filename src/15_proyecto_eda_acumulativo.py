from conexion_ import Conexion
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from mysql.connector import Error
try:
    _conexion = Conexion.obtener_conexion()
    if _conexion:
        query =  """
        SELECT ct.id, pc.edad, md.especialidad, ROUND((pc.edad * 15.5)/10) AS monto
        FROM schema.citas AS ct
        INNER JOIN schema.medicos AS md
        ON ct.id_medico = md.id
        INNER JOIN schema.pacientes AS pc
        ON ct.id_paciente = pc.id
        """
        df = pd.read_sql(query, con= _conexion)
        df_original = df.copy()
        df_final_limpio = None
        columnas = ["edad", "monto"]
        for columna in columnas:
            Q1 = df[f"{columna}"].quantile(0.25)
            Q3= df[f"{columna}"].quantile(0.75)
            IQR= Q3 - Q1
            Lim_inferior = Q1 - 1.5 * IQR
            Lim_superior = Q3 + 1.5 * IQR
            df_final_limpio = df[(df[f"{columna}"] >= Lim_inferior) & (df[f"{columna}"] <= Lim_superior)]
            df = df_final_limpio.copy()
        matriz = df_final_limpio[columnas].corr()
        sns.heatmap(data= matriz, annot=True, cmap="coolwarm", fmt=".2f")
        plt.tight_layout()
        plt.close()
        plt.savefig("01_heatmap_correlacion_clinica.png")
        plt.close()
        figg, ax = plt.subplots(1,2 , figsize = (12,5))
        sns.histplot(data= df_final_limpio, x= "edad", ax=ax[0])
        sns.boxplot(data= df_final_limpio, x= "monto", y="especialidad", ax=ax[1])
        plt.tight_layout()
        plt.savefig("02_distribucion_y_outliers.png")
        plt.close()
        Conexion.cerrar_conexion()
except Error as e:
    print(f"Error {e}")