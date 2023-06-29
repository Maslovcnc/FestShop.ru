FROM python:3.9-alpine3.16

COPY requirements.txt /temp/requrements.txt
COPY festshop /festshop
WORKDIR /festshop
EXPOSE 8000

RUN pip install -r /temp/requrements.txt

RUN adduser --disabled-password fs-user

USER fs-user
