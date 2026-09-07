FROM ruby:3.4.7

WORKDIR /myapp

COPY Gemfile Gemfile.lock ./

RUN gem install bundler --version 2.4.22 --no-document \
    && bundle _2.4.22_ install

COPY . .

EXPOSE 4000

CMD ["bundle", "_2.4.22_", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--safe", "--config", "_config.yml,_config_local.yml"]
