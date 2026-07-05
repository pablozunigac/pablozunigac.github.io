# ==============================================================================
# 1. ENTORNO NÚCLEO Y GESTIÓN DE PROYECTOS
# ==============================================================================
install.packages('tidyverse') # Incluye ggplot2, dplyr, tidyr, readr, purrr
install.packages('here')      # Gestión de rutas relativas e infraestructura limpia

# ==============================================================================
# 2. MODELADO ESTADÍSTICO AVANZADO Y SERIES DE TIEMPO
# ==============================================================================
install.packages('forecast')  # Modelado y predicción de series de tiempo (ARIMA, ETS)
install.packages('fable')     # Modelado de series de tiempo moderno de última generación
install.packages('tidymodels')# Framework estructurado para flujos de machine learning

# ==============================================================================
# 3. INTEROPERABILIDAD Y CONECTORES DE BASES DE DATOS (SQL)
# ==============================================================================
install.packages('DBI')       # Interfaz nativa de conexión a bases de datos
install.packages('RSQLite')   # Motor local para testing y persistencia ligera
install.packages('RPostgres') # Conector empresarial para entornos productivos PostgreSQL

# ==============================================================================
# 4. CAPA DE SEGURIDAD Y CONFIGURACIÓN
# ==============================================================================
install.packages('dotenv')    # Carga de variables de entorno (ocultar credenciales)
