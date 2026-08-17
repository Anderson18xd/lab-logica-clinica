import pandas as pd

ingresos = [150, 200, 180, 220, 190, 210, 15000, 175, 205, 195, 9000, 185]
df_ingresos = pd.DataFrame({"monto": ingresos})
Q1 = df_ingresos["monto"].quantile(0.25)
Q3 = df_ingresos["monto"].quantile(0.75)
IQR = Q3 - Q1
Lim_inferior = Q1 - 1.5 * IQR
Lim_superior = Q3 + 1.5 * IQR
df_outliers = df_ingresos[(df_ingresos["monto"] < Lim_inferior) | (df_ingresos["monto"] > Lim_superior)]
df_limpio = df_ingresos[(df_ingresos["monto"] > Lim_inferior) & (df_ingresos["monto"] < Lim_superior)]
media_antes = df_ingresos.mean()
media_despues = df_limpio.mean()
print(Lim_superior)
print(Lim_inferior)
print(df_outliers)
print(df_limpio)
print(media_antes)
print(media_despues)