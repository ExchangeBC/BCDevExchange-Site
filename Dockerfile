FROM ruby:2.3.0-alpine
MAINTAINER sheaphillips <shea.phillips@gmail.com>

RUN apk update \
  && apk add ruby-dev libpq libgcc ca-certificates make gcc libc-dev libffi-dev \
             nodejs zlib-dev libxml2 libxml2-dev libxslt libxslt-dev \
  && gem install jekyll -N \
  && apk add ruby-json

ADD . /site

WORKDIR /site

RUN adduser -S jekyll

RUN chown -R jekyll:0 /site && chmod -R 770 /site

USER jekyll

EXPOSE 4000

CMD jekyll serve --host 0.0.0.0
