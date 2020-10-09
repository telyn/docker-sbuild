FROM debian:buster-slim

ARG SCHROOT=buster

RUN apt update \
 && apt install -y sbuild debhelper \
 && sbuild-createchroot --include=debhelper $SCHROOT /srv/chroots/$SCHROOT http://httpredir.debian.org/debian/ \
 && apt clean
