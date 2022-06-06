FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine


RUN apk --update add bash nano

ENV STATIC_URL /static

ENV STATIC_PATH /app/static

EXPOSE 5000

COPY . .


RUN pip install flask

