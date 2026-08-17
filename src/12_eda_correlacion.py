import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

datos_eda = {
    "edad": [21, 31, 19, 45, 28, 52, 23, 60, 35, 48],
    "citas_atendidas": [3, 1, 5, 2, 4, 8, 2, 9, 4, 7],
    "monto_pagado": [150, 50, 250, 100, 200, 400, 100, 450, 200, 350],
    "dias_hospitalizado": [0, 2, 0, 1, 0, 5, 0, 7, 1, 4]
}

df = pd.DataFrame(datos_eda)
matriz_Pearson = df.corr()
print(matriz_Pearson)
sns.heatmap(data=matriz_Pearson, annot=True, cmap="coolwarm", fmt=".2f")
plt.title("Matriz de Correlación - Variables Clínicas")
plt.savefig("matriz_correlacion.png")
plt.show()
