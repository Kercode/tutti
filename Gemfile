source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'
gem 'mailcatcher'
gem 'devise'
gem 'kaminari'

gem 'prawn'
gem 'prawn-table'
gem 'responders'
gem 'jquery-rails', '~> 4.3', '>= 4.3.5'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use mysql2 as the database for Active Record
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# Use Capistrano for deployment
gem 'capistrano'
# Use Capistrano for install bundles
gem 'capistrano-bundler'
# Use Capistrano with passenger
gem 'capistrano-passenger'
# Capistrano for rails app
gem 'capistrano-rails'
# Use Capistrano with rbenv
gem 'capistrano-rbenv'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Fixtures replacement with a straightforward definition syntax
  gem 'factory_bot_rails'
  # Use Pry as your rails console
  gem 'pry-rails'
  gem 'figaro'
end

group :development do
  # Schema info
  gem "annotate", require: false
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Provide a quality report of your Ruby code
  gem 'rubycritic', require: false
  gem 'rubocop', '~> 0.57.2', require: false
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard'
  gem 'guard-rspec'
end

group :test do
  # Set of strategies for cleaning your database
  gem 'database_cleaner'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Testing framework for Rails 3.x, 4.x and 5.0
  gem 'rspec-rails'
  gem 'rubocop-rspec'
  # Code coverage
  gem 'simplecov'
  gem 'simplecov-html'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
