FROM python:3.8-alpine3.16
WORKDIR /app
COPY . .
RUN pip install django==3.2
RUN python manage.py migrate
EXPOSE 8000
CMD python manage.py runserver 0.0.0.0:8000
