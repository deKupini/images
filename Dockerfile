FROM python:3.13

RUN mkdir /app
WORKDIR /app

RUN apt-get update && apt-get install -y \
    libpq-dev

ENV PYTHONUNBUFFERED 1

COPY . /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000