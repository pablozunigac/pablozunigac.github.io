# ==============================================================================
# CONFIGURACIÓN Y ENTORNO
# ==============================================================================
.PHONY: init data model clean help

help:
	@echo "Comandos disponibles en la infraestructura:"
	@echo "  make init    - Instala todas las dependencias analíticas de R"
	@echo "  make data    - Ejecuta el pipeline de extracción y limpieza de datos"
	@echo "  make model   - Corre los modelos estadísticos y series de tiempo"
	@echo "  make clean   - Remueve archivos temporales y caché del sistema"

# ==============================================================================
# COMANDOS DE AUTOMATIZACIÓN
# ==============================================================================

init:
	Rscript install.R

data:
	@echo "Iniciando pipeline de datos..."
	# Aquí Git u orquestadores ejecutarán tus scripts de SQL o Python en el futuro
	# Rscript src/data_preparation.R

model:
	@echo "Ejecutando modelos estocásticos y series de tiempo..."
	# Rscript src/time_series_forecast.R

clean:
	rm -f .Rhistory .RData
	rm -rf src/__pycache__
	@echo "Ecosistema limpio de archivos temporales."
