from python:3.11-alpine

ARG USER=fastapi
ENV HOME /home/$USER

RUN apk add --no-cache build-base sudo

RUN adduser -D $USER \
        && echo "$USER ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER \
        && chmod 0440 /etc/sudoers.d/$USER

RUN chown -R $USER:$USER $HOME
USER $USER
WORKDIR $HOME/app

# Copy the rest of the application code to the container
COPY . .

# Install Python dependencies
RUN ./docker/scripts/build.sh

# Expose the port on which the FastAPI application will run
EXPOSE $PORT

