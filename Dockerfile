# Gunakan image dasar dengan Python 3.8
FROM python:3.8-slim

# Set working directory dalam container
WORKDIR /app

# Menambahkan file requirements.txt ke dalam container
COPY requirements.txt .

# Install dependencies
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Copy seluruh kode project ke dalam container
COPY . .

# Tentukan folder untuk menyimpan file upload dan model
RUN mkdir -p uploads static/models

# Expose port untuk Flask
EXPOSE 5000

# Perintah untuk menjalankan aplikasi Flask
CMD ["python", "app.py"]
