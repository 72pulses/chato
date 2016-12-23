# README

[![CircleCI](https://circleci.com/gh/72pulses/chato.svg?style=svg)](https://circleci.com/gh/72pulses/chato)

* Ruby version - 2.3.0
* Rails version - 5.0.0
* System dependencies
  * Postgresql
* Configuration
  * Environment variables are specified in the .env file
  * Developers should create a copy of .env file named .env.local and change the
    settings as per your system configuration. .env.local file is added in .gitignore
  * For production environemnt, a file named .env.production need to be added with production settings
* Steps to make the system up and running
  * Make sure that you had made the configuration as mentioned above and all dependencies are installed. Also, make sure that the ruby version is same as mentioned here
  * run - bundle install
  * Database creation
    * run - bundle exec rake db:create
    * For other environments run: RAILS_ENV=[environment] bundle exec rake db:create
  * Database Migration
    * run - bundle exec rake db:migrate
    * For production run: RAILS_ENV=[environment] bundle exec rake db:migrate
  * Database Initialization
    * run - bundle exec rake db:seed
    * For production run: RAILS_ENV=[environment] bundle exec rake db:seed
* Test suite
  * Testing Framework - Rspec Rails
  * To Run Test suite - rspec .

Find Logo/Icon from here link https://www.iconfinder.com/icons/1326121/chat_discutions_messages_icon
