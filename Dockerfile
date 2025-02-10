FROM python:3.11

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de dependencias e instálalas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo el contenido del proyecto al contenedor
COPY . .
COPY app.py /app.py


# Cambia el punto de entrada para coincidir con la estructura del proyecto
CMD ["python", "-m", "uvicorn", "/app.py", "--host", "0.0.0.0", "--port", "8000"]


