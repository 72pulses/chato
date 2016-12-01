# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  2.3.0
* System dependencies
  Postgresql

* Configuration
  copy config/database.yml.example to config/database.yml and edit it with your
  database configurations
  copy config/secrets.yml.example to config/secrets.yml.
  In production environment, create a new secret key

* Database creation
  bundle exec rake db:create
  For production: RAILS_ENV=production bundle exec rake db:create
* Database initialization

* Test suite
  Testing Framework - Rspec Rails
  To Run Test suite - rspec .
