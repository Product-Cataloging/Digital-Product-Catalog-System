FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client cmake
RUN mkdir /opt/app
WORKDIR /opt/app

COPY ./Gemfile ./Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000
