FROM ruby:2.6.1-stretch

COPY . /app
WORKDIR /app
RUN bundle install

CMD ["script/test"]
