source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.5'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem "airbrake"
gem "foundation-rails"
gem "haml"
gem "newrelic_rpm"
gem "pg"
gem "redcarpet"
gem "simple_form"
gem "stamp"
gem "sidekiq"
gem "ipsummer"
gem "honeybadger"
gem "sinatra"

group :production do
  gem "rails_12factor"
end

group :development, :test do
  gem "dotenv-rails"
  gem "byebug"
  gem "quiet_assets"
  gem "rb-inotify", require: false
  gem "rb-fsevent", require: false
  gem "rspec-rails"
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "foreman"
  gem "letter_opener"
  gem "guard-rspec"
  gem "pry-rails"
  gem "haml-rails"
end

group :test do
  gem "capybara"
  gem "poltergeist"
  gem "connection_pool"
  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "ffaker"
  gem "shoulda-matchers"
end
