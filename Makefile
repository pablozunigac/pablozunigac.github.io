# ==============================================================================
# PROJECT AUTOMATION
# ==============================================================================
.PHONY: all init data model clean help

# -------------------------------------------------------------------------------
# Configuration
# -------------------------------------------------------------------------------
VENV        := venv
VENV_BIN    := $(VENV)/bin
PYTHON      := $(VENV_BIN)/python
PIP         := $(VENV_BIN)/pip
RSCRIPT     := Rscript
SRC         := src

# -------------------------------------------------------------------------------
# Default workflow
# -------------------------------------------------------------------------------
all: init data model

help:
	@echo "Available commands:"
	@echo "  make init    - Create isolated runtime environment and install dependencies"
	@echo "  make data    - Execute data ingestion and preprocessing pipelines"
	@echo "  make model   - Run statistical analyses and machine learning workflows"
	@echo "  make clean   - Remove generated caches and temporary artifacts"

# -------------------------------------------------------------------------------
# Environment Initialization
# -------------------------------------------------------------------------------
init:
	@echo "Creating Python virtual environment..."
	test -d $(VENV) || python3 -m venv $(VENV)
	@echo "Installing Python dependencies..."
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt
	@echo "Installing R dependencies..."
	$(RSCRIPT) install.R

# -------------------------------------------------------------------------------
# Data Pipeline
# -------------------------------------------------------------------------------
data: init
	@echo "Running data ingestion pipeline..."
	$(PYTHON) $(SRC)/data_extraction.py
	$(RSCRIPT) $(SRC)/data_preparation.R

# -------------------------------------------------------------------------------
# Modeling
# -------------------------------------------------------------------------------
model: init
	@echo "Executing statistical and machine learning workflows..."
	$(RSCRIPT) $(SRC)/time_series_forecast.R
	$(PYTHON) $(SRC)/machine_learning_model.py

# -------------------------------------------------------------------------------
# Cleanup
# -------------------------------------------------------------------------------
clean:
	@echo "Removing temporary files..."
	rm -f .Rhistory .RData
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
	find . -type d -name ".ipynb_checkpoints" -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete 2>/dev/null || true
	@echo "Cleanup completed."
