# syntax=docker/dockerfile:1
FROM python:3.9.1

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /app/