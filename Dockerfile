FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /prog_image_types
WORKDIR /prog_image_types
COPY Gemfile /prog_image_types/Gemfile
COPY Gemfile.lock /prog_image_types/Gemfile.lock
RUN bundle install
COPY . /prog_image_types

EXPOSE 3001

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
