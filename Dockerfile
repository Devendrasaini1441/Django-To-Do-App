# Use the official Python image from the Docker Hub
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Run the Django application
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8001"]

