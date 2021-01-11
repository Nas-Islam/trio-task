#Use Python Image
FROM python:3.7
# Copy contents into image
COPY . . 
# run pip dependencies
RUN pip install flask flask_sqlalchemy pymysql
# Expose correct port
EXPOSE 5000
# Create an entrypoint
ENTRYPOINT ["python3","app.py"]
