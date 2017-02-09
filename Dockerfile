FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-jre
RUN mkdir /Cloud-SCS-Save-Decrypter
WORKDIR /Cloud-SCS-Save-Decrypter
ADD Gemfile /Cloud-SCS-Save-Decrypter/Gemfile
ADD Gemfile.lock /Cloud-SCS-Save-Decrypter/Gemfile.lock
RUN bundle install
ADD . /Cloud-SCS-Save-Decrypter
