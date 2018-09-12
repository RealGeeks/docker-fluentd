#!/bin/sh

apk --update add --virtual build-dependencies \
  build-base \
  ruby-dev \
  libc-dev \
  linux-headers \
  git \
&& gem install bundler \
&& (bundle check || bundle install) \
&& apk del build-dependencies
