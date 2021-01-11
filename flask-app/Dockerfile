#Use Python Image
FROM python:3.7
# Install apt dependencies
RUN apt update 
# Copy contents into image
COPY . . 
# run pip dependencies
RUN pip install flask SQLAlchemy pymysql  
# Expose correct port
EXPOSE 5000
# Create an entrypoint
ENTRYPOINT ["python3","app.py"]
