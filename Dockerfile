FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ARG SKIP_PEAS=flase

COPY ./ ./

RUN chmod 777 ./script.sh && bash -c ./script.sh

ENTRYPOINT /linpeas.sh

