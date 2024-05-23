# Base image using python
FROM python:3.8

# set working directory inside the container
WORKDIR /app

# copy requirement file
COPY requirements.txt .

# install dependencies
RUN pip install -r requirements.txt

# copy the application code into the container
COPY . .

# expose port for flask appilcation
EXPOSE 5000

# set env variables (optional)

# run flask application
CMD ["python", "app.py"]
