source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "active_type"
gem "bcrypt"
gem "bootsnap", require: false
gem "importmap-rails"
gem "pg", "~> 1.1"
gem "pgcli-rails"
gem "puma", "~> 5.0"
gem "rack-canonical-host"
gem "rails", "~> 7.0.3"
gem "sprockets-rails", '~> 3.4', '>= 3.4.2'
gem "stimulus-rails"
gem "turbo-rails"
gem 'simple_form', '~> 5.0', '>= 5.0.3'
gem 'bootstrap', '~> 5.2'
gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
gem 'jquery-rails', '~> 4.5'
# gem 'ransack', :github => 'activerecord-hackery/ransack', :branch => 'main'

group :production do
  gem "postmark-rails"
  gem "sidekiq"
end

group :development do
  gem "amazing_print"
  gem "annotate"
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "erb_lint", require: false
  gem "letter_opener"
  gem "rubocop", require: false
  gem "rubocop-minitest", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem 'rubocop-faker', '~> 1.1', require: false
  gem "web-console"
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
end

group :development, :test do
  gem "byebug"
  gem "dotenv-rails"
  gem "launchy"
end

group :test do
  gem "capybara"
  gem "minitest-ci", require: false
  gem "selenium-webdriver"
  gem "shoulda-context"
  gem "shoulda-matchers"
  gem "webdrivers"
end
