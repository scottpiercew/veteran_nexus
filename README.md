# Veteran Nexus


This app was built following Test Driven Development using ```rspec, Capybara``` and Behavior Driven Development using a flushed out storyboard. I've written about the major steps I took to build my first TDD and BDD application. The setup was in major part thanks to Startup Rocket's tutorial.

## My First Passing Feature Spec!
<img width="442" alt="first-feature-test-passed" src="https://user-images.githubusercontent.com/28062032/28342630-384c4568-6be7-11e7-8da7-ac6547cc2d4a.png">


Things you may want to cover:

* Ruby version

* System dependencies

### Configuration

I used these gems to setup TDD/BDD for this app.

```
group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
end

group :test do
  gem 'faker'
  gem 'capybara-webkit'
end
```
```factory_girl_rails``` generates test data.
```faker``` generates fake data: names, addresses.
```capybara-webkit``` Webkit driver for Capybara. Capybara is an integration testing tool for web applications. It simulates how a user would interact with a website. I installed Qt for compiling capybara webkit.

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

### Resources

https://en.wikipedia.org/wiki/Behavior-driven_development

https://www.startuprocket.com/articles/how-to-setup-a-rails-app-for-test-driven-and-behavior-driven-development-with-rspec-and-capybara

https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit
