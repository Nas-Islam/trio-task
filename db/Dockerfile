# Derived from official mysql image (our base image)
FROM mysql

# Add a database
ENV MYSQL_DATABASE users
# Add the content of the .sql file to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY . /docker-entrypoint-initdb.d/
