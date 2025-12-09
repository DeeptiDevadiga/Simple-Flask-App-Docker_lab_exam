# FROM python:3.9-slim

# # Set working directory
# WORKDIR /app

# # Copy dependency list
# COPY requirements.txt .

# # Install Python dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy entire project
# COPY . .

# # Expose Flask port
# EXPOSE 5070

# # Run the Flask Application
# CMD ["python3", "product_list_app.py"]

FROM python:3.9-slim-buster
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5070
ENV FLASK_APP=product_list_app.py
ENV FLASK_RUN_HOST=0.0.0.0
CMD ["flask", "run", "--port", "5070"]
