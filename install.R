# ==============================================================================
# R PROJECT DEPENDENCY INSTALLER
# Installs only missing packages required by the project
# ==============================================================================

# -------------------------------------------------------------------------------
# CRAN Repository
# -------------------------------------------------------------------------------
options(repos = c(CRAN = "https://cloud.r-project.org"))

# -------------------------------------------------------------------------------
# Dependency Index
# -------------------------------------------------------------------------------
packages <- c(

  # ============================================================================
  # Data Engineering & ETL
  # ============================================================================
  "tidyverse",    # Data manipulation, transformation and visualization ecosystem
  "arrow",        # Apache Arrow / Parquet support for high-performance analytics
  "here",         # Project-oriented file and directory management

  # ============================================================================
  # Statistical Modeling & Machine Learning
  # ============================================================================
  "car",          # Regression diagnostics, ANOVA and statistical utilities
  "fable",        # Forecasting models built on the tidy time-series framework
  "tidymodels",   # Unified machine learning and predictive modeling framework

  # ============================================================================
  # Data Visualization
  # ============================================================================
  "patchwork",    # Multi-panel ggplot layout composition
  "plotly",       # Interactive web-based visualizations
  "ggpubr",       # Publication-ready statistical graphics

  # ============================================================================
  # Database Connectivity & Configuration
  # ============================================================================
  "DBI",          # Standard database interface for R
  "RPostgres",    # PostgreSQL database driver
  "dotenv",       # Environment variable management from .env files

  # ============================================================================
  # Time Series Analytics
  # ============================================================================
  "feasts",       # Time-series feature extraction and diagnostics
  "tsibble",      # Tidy temporal data structures
  "timetk",       # Time-series feature engineering and visualization
  "urca",         # Unit root and cointegration tests

  # ============================================================================
  # Geospatial Analytics
  # ============================================================================
  "sf",           # Simple Features standard for vector spatial data
  "terra",        # Raster processing and spatial analysis
  "stars",        # Spatiotemporal array and raster data structures
  "gstat",        # Geostatistics, variograms and kriging

  # ============================================================================
  # Development, Testing & Quality Assurance
  # ============================================================================
  "testthat",     # Unit testing framework
  "logger",       # Structured application logging
  "lintr",        # Static code analysis and style checking
  "renv"          # Reproducible project-specific package environments

)

# -------------------------------------------------------------------------------
# Detect Missing Packages
# -------------------------------------------------------------------------------
missing_packages <- packages[
  !vapply(
    packages,
    requireNamespace,
    logical(1),
    quietly = TRUE
  )
]

# -------------------------------------------------------------------------------
# Install Missing Packages
# -------------------------------------------------------------------------------
if (length(missing_packages) > 0) {
  message(sprintf(
    "Installing %d missing package(s)...",
    length(missing_packages)
  ))
  install.packages(
    missing_packages,
    dependencies = TRUE
  )
} else {
  message("All required R packages are already installed.")
}

# -------------------------------------------------------------------------------
# Initialization Complete
# -------------------------------------------------------------------------------
message("R analytical environment successfully initialized.")
