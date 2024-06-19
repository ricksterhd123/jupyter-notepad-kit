FROM python:3 as base

WORKDIR /notebooks
COPY requirements.txt .
COPY notes notes
RUN apt update && apt install -y ffmpeg
RUN pip install -r requirements.txt

FROM base as build
WORKDIR /notebooks
COPY bin bin
CMD bash bin/builder.sh

FROM base as development
WORKDIR /notebooks
COPY . .
