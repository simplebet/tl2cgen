FROM --platform=$BUILDPLATFORM python:3.11.9

RUN apt-get update -y && apt-get install -y cmake

WORKDIR /app

ADD . .

RUN pip install hatch
RUN cd python && hatch build
RUN cd python/dist && ls .


