#Pyhton image from docker
FROM python:3.9-buster
#set working directory in container
WORKDIR /app
#copy requirements file to working directory to install dependencies
COPY requirements.txt .
# install required python packages 
RUN pip3 install --no-cache-dir -r requirements.txt
#copy application code to the working directory
COPY . .
#setting environment variable for flask app.
ENV FLASK_RUN_HOST=0.0.0.0
#expose the port on which the flask will run
EXPOSE 5000
#execute the run command
CMD ["flask", "run"]