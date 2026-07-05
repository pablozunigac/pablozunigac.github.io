# ==============================================================================
# 1. MANIPULACIÓN DE DATOS & ETL (El ecosistema Tidyverse)
# ==============================================================================
install.packages("tidyverse") # Descarga dplyr (manipulación), tidyr (limpieza) y readr (ETL)
install.packages("arrow")     # Soporte ultra rápido para leer y procesar datos masivos (Parquet)
install.packages("here")      # Gestión de rutas relativas para evitar romper los scripts de ETL

# ==============================================================================
# 2. INFERENCIA ESTADÍSTICA AVANZADA
# ==============================================================================
install.packages("car")        # Herramientas avanzadas para regresión lineal y ANOVA predictivo
install.packages("fable")      # Modelado estadístico moderno enfocado en Series de Tiempo
install.packages("tidymodels") # Framework unificado para modelamiento estadístico y Machine Learning

# ==============================================================================
# 3. VISUALIZACIÓN DE DATOS (DataViz de nivel ejecutivo)
# ==============================================================================
# Nota: ggplot2 ya viene incluido de forma nativa dentro de "tidyverse"
install.packages("patchwork")  # Permite combinar múltiples gráficos complejos en un solo reporte
install.packages("plotly")     # Transforma tus gráficos de ggplot2 en visualizaciones web interactivas
install.packages("ggpubr")     # Facilita la creación de gráficos listos para publicaciones o reportes de alta dirección

# ==============================================================================
# 4. CONECTORES Y GOBERNANZA
# ==============================================================================
install.packages("DBI")        # Interfaz de base de datos estándar de R
install.packages("RPostgres")  # Conector empresarial para la extracción de datos desde PostgreSQL
install.packages("dotenv")     # Carga de variables de entorno para resguardar tokens de acceso

# ==============================================================================
# 5. ANÁLISIS DE SERIES DE TIEMPO (Modelado Estocástico y Predictivo)
# ==============================================================================
install.packages("feasts")     # Características y estadísticas de series de tiempo (descomposiciones, ACF/PACF)
install.packages("tsibble")    # Estructura de datos temporal moderna, ordenada y optimizada (Dataframes de tiempo)
install.packages("timetk")     # Herramientas de visualización, ingeniería de atributos y análisis temporal avanzado
install.packages("urca")       # Pruebas de raíz unitaria y cointegración (esencial para validación de estacionariedad)

# ==============================================================================
# 6. CIENCIAS DE LA TIERRA, GEOLOGÍA Y GEODESIA (Análisis Geoespacial)
# ==============================================================================
install.packages("sf")         # "Simple Features": El estándar moderno para manipular datos vectoriales (puntos, líneas, polígonos)
install.packages("terra")      # Procesamiento ultra rápido de imágenes ráster, topografía, modelos de elevación (DEM) y grillas
install.packages("stars")      # Manejo de cubos de datos espacio-temporales (imágenes satelitales a lo largo del tiempo)
install.packages("gstat")      # Modelado geoestadístico, variogramas e interpolación espacial (Kriging para geología)

# ==============================================================================
# 7. DATAOPS & DEVOPS (Calidad de Código, Automatización y Pruebas)
# ==============================================================================
install.packages("testthat")   # Framework para pruebas unitarias automáticas (valida que tus algoritmos no fallen)
install.packages("logger")     # Sistema de logs profesional para registrar eventos, errores y auditorías del sistema en producción
install.packages("lintr")      # Análisis estático de código (asegura que sigas las mejores prácticas de estilo de programación)
install.packages("renv")       # Gestión local de entornos virtuales para congelar versiones (el motor detrás del DevOps en R)
