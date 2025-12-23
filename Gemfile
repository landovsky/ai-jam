source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read('.ruby-version').chomp

## Authentication, authorization & friends
# gem 'bcrypt'
# gem 'cancancan'
# gem 'devise'

## Rails
gem 'bootsnap'
# gem 'globalid', '~> 1.2', '>= 1.2.1'
gem 'puma'
gem 'thruster'
gem 'rack-cors'
gem 'rails', '~> 8.1'
gem 'route_translator', '~> 15.2'

## Front-end and Asset Pipeline
gem 'cssbundling-rails', '~> 1.4'
gem 'draper'
# gem 'jbuilder'
gem 'jsbundling-rails'
gem 'slim-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
# gem 'view_component', require: 'view_component/engine'

# This comes from flexi_admin, so we don't need it here
# gem 'will_paginate'
# gem 'will_paginate-bootstrap-style'
# gem 'wkhtmltopdf-binary', '~> 0.12.6'
# gem 'flexi_admin', git: 'https://github.com/landovsky/flexi_admin.git'
# gem 'flexi_admin', path: '../flexi_admin'

## Database and Storage
# gem 'activerecord-import', '~> 2.1', require: false
# gem 'activerecord-postgis-adapter'
# gem 'audited'
# gem 'discard'
# gem 'google-cloud-storage', require: false
gem 'sqlite3', '~> 2.0'
# gem 'pg_query', '~> 6.1'
# gem 'pg_search'
# gem "kredis"
# gem 'redis'
# gem 'scenic'
# gem 'with_advisory_lock', '~> 5.1'

# Image processing
gem 'image_processing', '~> 1.13'
# gem 'mini_exiftool'

## Background Job Processing
# gem 'after_commit_everywhere'
# gem 'sidekiq'
# gem 'sidekiq-scheduler'

## Working with data
# gem 'friendly_id', '~> 5.5'
gem 'active_interaction', '~> 5.5'
gem 'jsonapi-serializer'
gem 'mime-types', '~> 3.7'
# gem 'money-rails', '~> 1.12'
gem 'nilify_blanks'
gem 'nokogiri'
gem 'oj'
# gem 'ransack'
# gem 'roo', '~> 2.10.0'
# gem 'roo-xls', '~> 1.2'
# gem 'spreadsheet', '~> 1.3'
# gem 'user_agent_parser'

## Third-Party Integrations
# gem 'aws-sdk-s3', '~> 1.199'
# gem 'googleauth'
# gem 'google-cloud-bigquery', '~> 1.52', require: false
gem 'httparty'
# gem 'mapkick-rb'
gem 'ruby-openai', '~> 8.3'
gem 'sentry-rails'
gem 'sentry-ruby'
# gem 'logtail-rails'

## Other
gem 'pry-rails'
gem 'rails-i18n', '~> 8.1'
gem 'semantic'

## Development and Test
group :development, :test do
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'prosopite'
  gem 'shoulda-matchers'
end

group :development do
  gem 'letter_opener'
  gem 'letter_opener_web'
  gem 'web-console'
  # gem "rack-mini-profiler"
  # gem "spring"
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '~> 2.1'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

## Miscellaneous
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem "solid_queue", "~> 1.2"
