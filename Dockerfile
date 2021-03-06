# Use the Python3.7.2 image
FROM docker.io/davidsanusi/nginx-uwsgi-alpine3.9 

# Push this image to our repo for subsequent builds

# RUN adduser -D microblog

# Add requirements file before adding the rest of the app folder
# to allow layer caching optimization
ADD requirements.txt /app

# Set the working directory to /app
WORKDIR /app

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app
ADD . /app

# USER microblog

# Expose port 80
EXPOSE 80

# run the command to start uWSGI

CMD ["/usr/bin/supervisord"]