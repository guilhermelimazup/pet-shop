FROM ruby:2.5.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /pet-shop
WORKDIR /pet-shop
COPY Gemfile /pet-shop/Gemfile
COPY Gemfile.lock /pet-shop/Gemfile.lock
RUN bundle install
COPY . /pet-shop