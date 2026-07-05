# ==============================================================================
# CONFIGURACIÓN Y ENTORNO 
# ==============================================================================
.PHONY: init data model clean help

help:
	@echo "Comandos disponibles en la infraestructura:"
	@echo "  make init    - Instala dependencias analíticas (R y Python)"
	@echo "  make data    - Ejecuta el pipeline de extracción y limpieza de datos"
	@echo "  make model   - Corre los modelos estadísticos y series de tiempo"
	@echo "  make clean   - Remueve archivos temporales y caché del sistema"

# ==============================================================================
# COMANDOS DE AUTOMATIZACIÓN
# ==============================================================================

init:
	@echo "Instalando dependencias de R..."
	Rscript install.R
	@echo "Instalando dependencias de Python..."
	pip install -r requirements.txt

data:
	@echo "Iniciando pipeline de datos..."
	# Aquí conviven ambos sin problemas:
	python src/data_extraction.py
	Rscript src/data_preparation.R

model:
	@echo "Ejecutando modelos estocásticos y series de tiempo..."
	Rscript src/time_series_forecast.R
	python src/machine_learning_model.py

clean:
	rm -f .Rhistory .RData
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	@echo "Ecosistema limpio de archivos temporales."
