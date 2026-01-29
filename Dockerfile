FROM python:3.10-slim

WORKDIR /app

# Install deps first (better layer cache)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Ensure the port your app listens on matches below
EXPOSE 5000

# Start the app (this assumes your file is app.py and Flask app is named 'app')
CMD ["python", "app.py"]
