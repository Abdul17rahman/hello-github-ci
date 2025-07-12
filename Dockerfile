# Create a base image
FROM python:3.11.1-slim

# Create a working dir
WORKDIR /app

# Copy files
COPY requirement.txt .

# Setup the enviroment
RUN pip install -r requirement.txt

COPY . .

# Run the container
CMD [ "pytest", "test_hello.py" ]
