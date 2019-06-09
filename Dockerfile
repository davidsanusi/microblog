# Use the Python3.7.2 image
FROM nginx-uwsgi-alpine3.9 # Push this image to our repo for subsequent builds

RUN adduser -D microblog

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install the dependencies
RUN pip install -r requirements.txt
USER microblog

# Expose port 8000
EXPOSE 8000

# run the command to start uWSGI

CMD ["/usr/bin/supervisord"]