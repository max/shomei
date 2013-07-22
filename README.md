# Shomei

A simple NDA and signature pad app for [Heroku][https://www.heroku.com/].

## Installing locally

To run this app locally you need Ruby 1.9.3 and Postgres.

```
$ bundle install
$ cp config/database.example.yml config/database.yml
$ bundle exec rake db:create
$ bundle exec rake db:migrate
$ foreman start
```

## Deploying to Heroku

```
$ heroku create
$ git push heroku master
$ heroku run rake db:migrate
```