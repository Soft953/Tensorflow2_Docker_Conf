FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

RUN apt update && apt install -y python3-setuptools

WORKDIR /app
RUN mkdir /app/Repo
RUN mkdir /app/Repo/Conf/
RUN mkdir /app/Repo/Conf/ConfTensorFlow/
RUN mkdir /app/Repo/notebooks
RUN mkdir /app/Repo/tf
RUN mkdir /app/Data

ADD . /app/Repo/Conf/ConfTensorFlow

WORKDIR /app/Repo/Conf/ConfTensorFlow

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip

EXPOSE 8888

RUN pip3 install -r requirements.txt
