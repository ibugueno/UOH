FROM nvidia/cuda:10.1-base
CMD nvidia-smi

# Use an official pytorch runtime as a parent image
FROM pytorch/pytorch

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN mkdir data

RUN ls

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run gan.py
CMD ["python", "-u", "gan_pytorch.py"]
