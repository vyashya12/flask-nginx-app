FROM python:3.9

WORKDIR /app

COPY ./app .

RUN pip3 install -r requirements.txt

CMD gunicorn --bind 0.0.0.0:8888 app:app  