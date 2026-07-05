# ==============================================================================
# PYTHON PROJECT CONFIGURATION
# Project metadata, dependency management and reproducible environments
# ==============================================================================

[project]
name = "nombre-del-proyecto"
version = "0.1.0"
description = "..."
requires-python = ">=3.12"

dependencies = [

    # ==========================================================================
    # DATA ENGINEERING, CONNECTIVITY & ETL
    # Primary data structures, ingestion engines and database connectivity
    # ==========================================================================
    "pandas==2.2.3",             # Industry-standard dataframe library
    "numpy==2.2.3",              # High-performance numerical computing
    "pyarrow==16.1.0",           # Apache Arrow / Parquet interoperability

    # ==========================================================================
    # ADVANCED STATISTICAL INFERENCE
    # Classical inference, hypothesis testing and statistical modeling
    # ==========================================================================
    "scipy==1.15.2",             # Scientific computing and statistical inference
    "statsmodels==0.14.4",       # Statistical models, ANOVA and time series
    "scikit-learn==1.6.1",       # Machine learning and predictive analytics

    # ==========================================================================
    # DATA VISUALIZATION
    # Static and interactive analytical visualization
    # ==========================================================================
    "matplotlib==3.9.0",         # Foundational plotting library
    "seaborn==0.13.2",           # Statistical visualization
    "plotly==5.22.0",            # Interactive web-based visualizations

    # ==========================================================================
    # DATABASE CONNECTIVITY & CONFIGURATION
    # Database abstraction layers and application configuration
    # ==========================================================================
    "sqlalchemy==2.0.38",        # Database abstraction and ORM
    "psycopg2-binary==2.9.10",   # PostgreSQL database driver
    "python-dotenv==1.0.1"       # Environment variable management

]
