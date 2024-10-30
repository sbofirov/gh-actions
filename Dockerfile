# Use the official Python image as a base
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of your application code
COPY . .

EXPOSE 5000
# Command to run your app
CMD ["python", "app.py"]

LABEL org.opencontainers.image.source https://github.com/sbofirov/gh-actions
