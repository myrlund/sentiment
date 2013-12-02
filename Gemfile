source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'

# Use mongo as the database
gem 'mongoid', '~> 4', github: 'mongoid/mongoid'
gem 'bson_ext'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Auth with pundit policies
gem 'pundit'

# Use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

group :development do
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-livereload', require: false
  gem 'terminal-notifier-guard', require: false

  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'rubocop'
end

group :test do
  gem 'api_matchers'
end

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]
