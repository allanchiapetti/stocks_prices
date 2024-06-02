FROM python:3.9-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

## Override the default shell (not supported on older docker, prepend /bin/bash -c )
#SHELL ["/bin/bash", "-c"]

# chmod - modifies the boot.sh file so it can be recognized as an executable file.
#COPY server.sh ./
#RUN chmod +x server.sh

# EXPOSE - informs Docker that the container listens on the specified network ports at runtime
EXPOSE 5000

# ENTRYPOINT - allows you to configure a container that will run as an executable.
#ENTRYPOINT ["/server.sh"]

CMD ["gunicorn", "wsgi:app", "-b", "0.0.0.0:5000"]