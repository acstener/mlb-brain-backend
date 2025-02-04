FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application code
COPY . .

# Expose the port
ENV PORT=8765
EXPOSE 8765

# Run the application
CMD ["python", "app.py"]
