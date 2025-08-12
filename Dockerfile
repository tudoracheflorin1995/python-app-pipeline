# Use a lightweight Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /python-app-pipeline

# Copy files
COPY requirements.txt .
COPY app.py .

# Install dependencies (even if empty)
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the app
CMD ["python", "app.py"]
