FROM debian:buster-slim

ARG SCHROOT=buster

RUN apt update \
 && apt install -y sbuild \
 && sbuild-createchroot $SCHROOT /srv/chroots/$SCHROOT http://httpredir.debian.org/debian/
