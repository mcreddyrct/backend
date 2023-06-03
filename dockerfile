FROM python:3.11-alpine
WORKDIR /app
COPY . /app
RUN dnf install mariadb105-server -y
RUN pip install -r requirements.txt
EXPOSE 80
ENTRYPOINT["python"]
CMD[ "app.py"]