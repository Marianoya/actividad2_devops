# Imagen base de Python
FROM python:3.12-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

# Copiamos el código al contenedor
COPY main.py .
COPY clientes ./clientes

# Comando para ejecutar la aplicación
CMD ["python", "main.py"]   

