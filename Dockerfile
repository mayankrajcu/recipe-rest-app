FROM python:3.7-alpine
LABEL MAINTAINER = Mayank Raj

ENV PYTHONUNBUFFERED 1

# Install Dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#Setup Directory structures
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
