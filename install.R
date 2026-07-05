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
  # DEVELOPMENT, INFRASTRUCTURE & CONFIGURATION
  # Core systems, environment runtimes, and local configuration layers
  # ============================================================================
  "renv",           # Reproducible project-specific package environments
  "dotenv",         # Environment variable management from .env files
  "here",           # Project-oriented file and directory management
  "lintr",          # Static code analysis and style checking

  # ============================================================================
  # DATA ENGINEERING, CONNECTIVITY & ETL
  # Primary data abstraction, ingestion engines, and database abstraction layers
  # ============================================================================
  "tidyverse",      # Data manipulation, transformation and visualization ecosystem
  "arrow",          # Apache Arrow / Parquet support for high-performance analytics
  "DBI",            # Standard database interface for R
  "RPostgres",      # PostgreSQL database driver

  # ============================================================================
  # TIME SERIES ANALYTICS
  # Frameworks and data structures for temporal data modeling and forecasting
  # ============================================================================
  "tsibble",        # Tidy temporal data structures (Core structural engine)
  "fable",          # Forecasting models built on the tidy time-series framework
  "feasts",         # Time-series feature extraction and diagnostics
  "timetk",         # Time-series feature engineering and visualization
  "urca",           # Unit root and cointegration tests

  # ============================================================================
  # GEOSPATIAL ANALYTICS
  # Computational geometry, raster computation, and geostatistical modeling
  # ============================================================================
  "sf",             # Simple Features standard for vector spatial data (Core engine)
  "terra",          # Raster processing and spatial analysis (Core raster engine)
  "gstat",          # Geostatistics, variograms and kriging
  "stars",          # Spatiotemporal array and raster data structures

  # ============================================================================
  # ADVANCED STATISTICAL INFERENCE & BIOSTATISTICS
  # Classical inference, linear mixed-effects, and mathematical modeling
  # ============================================================================
  "car",            # Regression diagnostics, ANOVA and statistical utilities
  "emmeans",        # Estimated marginal means and post-hoc comparisons
  "lme4",           # Linear and generalized mixed-effects models
  "mgcv",           # Generalized additive models (GAMs)
  "survival",       # Survival analysis and time-to-event models

  # ============================================================================
  # MACHINE LEARNING & PREDICTIVE WORKFLOWS
  # Unified frameworks for algorithmic training, validation, and resampling
  # ============================================================================
  "tidymodels",     # Unified machine learning and predictive modeling framework

  # ============================================================================
  # DATA VISUALIZATION
  # Static and web-interactive data communication layers
  # ============================================================================
  "ggpubr",         # Publication-ready statistical graphics
  "patchwork",      # Multi-panel ggplot layout composition
  "plotly",         # Interactive web-based visualizations

  # ============================================================================
  # DASHBOARDS & INTERACTIVE APPLICATIONS
  # Production-grade web runtimes and interface layout utilities
  # ============================================================================
  "shiny",          # Interactive web applications and analytical dashboards (Core)
  "bslib",          # Bootstrap-based UI customization and theming
  "DT",             # Interactive data tables
  "shinydashboard", # Dashboard layout components for Shiny applications

  # ============================================================================
  # REPORTING & REPRODUCIBLE DOCUMENTS
  # Literary programming frameworks, automated publishing, and business delivery
  # ============================================================================
  "quarto",         # Scientific and business publishing framework (Next-gen core)
  "rmarkdown",      # Dynamic reports in HTML, PDF and Word (Legacy core)
  "knitr",          # Literate programming and report generation engine
  "gt",             # Publication-quality tables
  "officer",        # Microsoft Word and PowerPoint document generation

  # ============================================================================
  # QUALITY ASSURANCE, TESTING & LOGGING
  # Enterprise-grade validation pipelines and runtime auditing
  # ============================================================================
  "testthat",       # Unit testing framework
  "logger"          # Structured application logging

)

# -------------------------------------------------------------------------------
# Detect Missing Packages
# -------------------------------------------------------------------------------
missing_packages <- packages[!vapply(packages,
                                     requireNamespace,
                                     logical(1),
                                     quietly = TRUE)
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
