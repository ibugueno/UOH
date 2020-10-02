FROM nvidia/cuda:10.1-base
CMD nvidia-smi

# Use an official tensorflow runtime as a parent image :1.15.2
FROM tensorflow/tensorflow

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN pip show tensorflow

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run gan.py
CMD ["python", "-u", "gan.py"]
