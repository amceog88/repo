source 'https://rubygems.org/'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'

gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
# gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem "kaminari"
gem "rails-i18n"
gem 'pg', '>= 0.18', '< 2.0'
gem 'bootstrap-sass', '~> 3.4.1'
gem 'rails-erd'
gem 'jquery-rails'
gem 'pry'
gem "ransack"
gem "simple_calendar", "~> 2.0"
gem "google-cloud-storage", "~> 1.11", require: false
gem 'mini_magick'

gem 'select2-rails'

group :development, :test do
  gem 'capistrano-rails'
  gem 'capistrano-passenger'

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]


  gem 'rspec-rails', '~> 3.6'
  gem "factory_bot_rails", "~> 4.0"
  gem 'rails-controller-testing'
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 3.1'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'simplecov', require: false, group: :test
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
