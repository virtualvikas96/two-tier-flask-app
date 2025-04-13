#Base image
FROM python:3.9-slim

#Set the working directory in the container
WORKDIR /app

#install required packages for system
RUN apt-get update -y

RUN apt-get upgrade -y

RUN apt-get install -y gcc default-libmysqlclient-dev pkg-config

RUN rm -rf /var/lib/apt/lists/*

#Copy code and required files into the container
COPY . .

#Install app dependencies
RUN pip install mysqlclient

RUN pip install --no-cache-dir -r requirements.txt

#Specify the command to run application 
CMD ["python", "app.py"]
