FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1

WORKDIR /app

# Install Flask
RUN pip install --no-cache-dir flask

# Copy app code
COPY app.py .

# Render listens on 8080
EXPOSE 8080

# Start the server
CMD ["python", "app.py"]
