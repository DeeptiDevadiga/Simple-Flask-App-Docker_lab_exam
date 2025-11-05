FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependency list
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy entire project
COPY . .

# Expose Flask's default port
EXPOSE 5070

# Run the Flask Application
CMD ["python3", "product_list_app.py"]
