FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ARG SKIP_PEAS=flase

COPY ./ ./

RUN bash -c ./script.sh

ENTRYPOINT /linpeas.sh

