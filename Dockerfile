# Use a imagem oficial do Python
FROM python:3.12-slim

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos do projeto para o container
COPY . /app

# Instala dependências (se houver)
RUN pip install flask

# Expõe a porta que o app vai rodar
EXPOSE 5000

# Comando para rodar o app
CMD ["python", "app.py"]
