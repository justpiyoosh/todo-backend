# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
  * Change the stack of app :
      heroku stack:set heroku-18 -a=todobackend4
  * After that run this command to migrate : 
      heroku run rake db:migrate
