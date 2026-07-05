DEPENDENCIAS = [
    # --------------------------------------------------------------------------
    # MANIPULACIÓN DE DATOS & ETL
    # --------------------------------------------------------------------------
    "pandas==2.2.3",       # Estándar de la industria para dataframes y ETL ligero
    "numpy==2.2.3",        # Computación numérica vectorial de alta velocidad
    "pyarrow==16.1.0",     # Motor de alto rendimiento para leer Parquet y optimizar Pandas
    
    # --------------------------------------------------------------------------
    # INFERENCIA ESTADÍSTICA
    # --------------------------------------------------------------------------
    "scipy==1.15.2",       # Pruebas de hipótesis, distribuciones y optimización matemática
    "statsmodels==0.14.4", # Modelos lineales, análisis de varianza (ANOVA) y series de tiempo
    "scikit-learn==1.6.1", # Algoritmos de minería de datos y clustering estadístico
    
    # --------------------------------------------------------------------------
    # VISUALIZACIÓN DE DATOS (DataViz)
    # --------------------------------------------------------------------------
    "matplotlib==3.9.0",   # Capa base de graficación en Python
    "seaborn==0.13.2",     # Visualización estadística avanzada y matrices de correlación
    "plotly==5.22.0",      # Gráficos e dashboards interactivos con calidad de producción
    
    # --------------------------------------------------------------------------
    # CONECTORES E INFRAESTRUCTURA
    # --------------------------------------------------------------------------
    "sqlalchemy==2.0.38",  # Capa de abstracción de bases de datos para tus queries SQL
    "psycopg2-binary==2.9.10", # Conector nativo para bases de datos PostgreSQL
    "python-dotenv==1.0.1" # Gestión segura de credenciales
]
