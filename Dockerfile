FROM python:3.11.7-slim

WORKDIR /app

RUN apt-get update
RUN apt-get install gcc g++ libsm6 libxext6 -y
RUN pip install --upgrade pip

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "streamlit", "run", "vision.py"]