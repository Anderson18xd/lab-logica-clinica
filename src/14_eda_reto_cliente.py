import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

data = {
    "paciente_id": range(1, 16),
    "edad": [23, 45, 120, 34, 29, 52, 41, 38, -5, 61, 28, 47, 33, 50, 22],
    "monto_pagado": [200, 180, 220, 190, 8500, 210, 195, 205, 175, 12000, 185, 225, 190, 200, 215]
}
df_clinica = pd.DataFrame(data)
df_clinica_original = df_clinica.copy()
df_final_limpio = None
columnas = ["edad" , "monto_pagado"]
for columna in columnas:
    Q1 = df_clinica[f"{columna}"].quantile(0.25)
    Q3= df_clinica[f"{columna}"].quantile(0.75)
    IQR= Q3 - Q1
    Lim_inferior = Q1 - 1.5 * IQR
    Lim_superior = Q3 + 1.5 * IQR
    df_final_limpio = df_clinica[(df_clinica[f"{columna}"] >= Lim_inferior) & (df_clinica[f"{columna}"] <= Lim_superior)]
    df_clinica = df_final_limpio.copy()
fig, ax = plt.subplots(1,2, figsize=(12,5))
sns.boxplot(data=df_clinica_original, x="monto_pagado", ax=ax[0])
sns.boxplot(data=df_final_limpio, x="monto_pagado", ax=ax[1])
plt.tight_layout()
plt.savefig("comparacion_outliers_clinica.png")
plt.show()