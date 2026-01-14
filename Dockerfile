FROM python:3.11-slim

# Prevent Python from buffering logs
ENV PYTHONUNBUFFERED=1

# Set working directory
WORKDIR /app

# Copy application code
COPY app.py .

# Expose the port Render uses
EXPOSE 8080

# Start the app
CMD ["python", "app.py"]


