# Usa la imagen oficial de Python como base
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requisitos al contenedor
COPY requirements.txt .

# Instala las dependencias especificadas en requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo el contenido de tu proyecto dentro del contenedor
COPY . .

# Expone el puerto 8001 para acceder a la aplicación web
EXPOSE 8001

# Define el comando para ejecutar el servidor de Django cuando el contenedor se inicie
CMD ["python", "manage.py", "runserver", "0.0.0.0:8001"]

