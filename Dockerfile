FROM ruby:3.2.0

RUN apt-get update -qq && apt-get install -y \
      build-essential

WORKDIR /src
COPY Gemfile /src/Gemfile
COPY Gemfile.lock /src/Gemfile.lock

RUN gem install bundler && bundle install

# Executes each time container starts
COPY ./bin/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

CMD ["ruby", "app/main.rb"]
