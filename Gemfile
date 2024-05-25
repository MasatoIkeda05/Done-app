source "https://rubygems.org"

### Base
ruby "3.2.2"
gem "rails", "~> 7.1.3", ">= 7.1.3.2"
gem "sprockets-rails"
gem "puma", ">= 5.0"
gem "bootsnap", require: false

### Tmp
gem "rename"


### DB Base
gem "pg", "~> 1.1"

### JS Base
gem "importmap-rails"
gem "stimulus-rails"
gem "turbo-rails"

### API Base
gem "jbuilder"

####Active Model
# gem "bcrypt", "~> 3.1.7"

group :development, :test do
  ### for debug
  gem "debug", platforms: %i[ mri windows ]

  ### for test
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
