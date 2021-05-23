# Dockerfile

FROM ruby:3.0.1

WORKDIR /Sinatra_Test
COPY . /Sinatra_Test
RUN bundle install

# EXPOSE 4567
CMD bundle exec rackup --host 0.0.0.0 -p $PORT