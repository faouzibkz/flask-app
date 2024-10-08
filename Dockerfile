# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Copy the current directory contents into the container
COPY . /app

# Expose port 5000 to the outside world
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
