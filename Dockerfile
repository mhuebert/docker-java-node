FROM openjdk:8-jre
LABEL maintainer "Tim Brust <tim.brust@sinnerschrader.com>"

ENV REFRESHED_AT 2018-01-08

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apk update && apk upgrade && \
    apk add --no-cache git openssh
RUN apt-get update -qqy && apt-get -qqyy install \
    nodejs git-all \
  && rm -rf /var/lib/apt/lists/*
