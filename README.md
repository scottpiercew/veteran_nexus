# README

This README would normally document whatever steps are necessary to get the
application up and running.

This app was built following Test Driven Development and Behavior Driven Development

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

I used these gems to setup TDD/BDD for this app

Installed Qt for compiling capybara webkit

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
  gem 'faker'
  gem 'capybara-webkit'
end

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Resources
https://en.wikipedia.org/wiki/Behavior-driven_development

https://www.startuprocket.com/articles/how-to-setup-a-rails-app-for-test-driven-and-behavior-driven-development-with-rspec-and-capybara

https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit
