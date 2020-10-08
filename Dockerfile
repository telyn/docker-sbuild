FROM debian:buster-slim

ARG SCHROOT=buster

RUN useradd sbuild \
 && apt update \
 && apt install -y sbuild debhelper \
 && sbuild-createchroot --include=debhelper $SCHROOT /srv/chroots/$SCHROOT http://httpredir.debian.org/debian/ \
 && sbuild-add-user sbuild \
 && apt clean

USER sbuild
