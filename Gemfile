source 'https://rubygems.org'

gem 'phut', github: 'trema/phut', branch: 'develop'
gem 'trema', github: 'trema/trema_ruby', branch: 'develop'

group :development, :test do
  gem 'aruba', require: false
  gem 'cucumber', require: false
  gem 'flay', require: false
  gem 'flog', require: false
  gem 'guard', require: false
  gem 'guard-bundler', require: false
  gem 'guard-cucumber', require: false
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false
  gem 'reek', require: false
  gem 'rspec', require: false
  gem 'rspec-given', require: false
  gem 'rubocop', require: false
end

group :development do
  gem 'inch', require: false
  gem 'yard', require: false
end

# The test group will be installed on Travis CI
group :test do
  gem 'codeclimate-test-reporter', require: false
  gem 'coveralls', require: false
end