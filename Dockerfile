# Use an existing image as a base
FROM python:3.9-slim-buster

# Set the working directory for the application
WORKDIR /app

# Copy the requirements files to the container
COPY requirements.txt requirements.txt

# Install any necessary dependencies
RUN pip3 install -r requirements.txt

# Copy the application files to the container
COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
