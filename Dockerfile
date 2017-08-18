# Base image
FROM ubuntu:latest

# Install python and pip
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev

# Copy files required for the app to run
COPY . /ca-project/

# Install python modules needen by the python app
RUN pip install --no-cache-dir -r /ca-project/requirements.txt

# Declare the port number the container should expose - the port the container listens to
EXPOSE 5000

# Run the application - ẃhat the container does when we run it
CMD ["python", "/ca-project/run.py"]


