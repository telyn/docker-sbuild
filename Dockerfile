FROM debian:buster-slim

ARG SCHROOT=buster

RUN apt update \
 && apt install -y sbuild \
 && sbuild-createchroot --include=debhelper $SCHROOT /srv/chroots/$SCHROOT http://httpredir.debian.org/debian/ \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*
