# README

* Ruby version - 2.3.0
* Rails version - 5.0.0
* System dependencies
  * Postgresql
* Configuration
  * copy config/database.yml.example to config/database.yml and edit it with your
  database configurations
  * copy config/secrets.yml.example to config/secrets.yml. In production environment, create a new secret key
  * copy config/cable.yml.example to config/cable.yml and provide your configurations
  copy config/config.yml.example to config/config.yml and provide your configurations
  * run - bundle install

* Database creation
  * run - bundle exec rake db:create
  * For production run: RAILS_ENV=production bundle exec rake db:create
* Database initialization

* Test suite
  * Testing Framework - Rspec Rails
  * To Run Test suite - rspec .
