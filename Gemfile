source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'mechanize'
gem 'active_model_serializers', '~> 0.10.0'

gem 'rails', '~> 5.0.2'
gem 'pg'
gem 'puma', '~> 3.0'

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.5'
  gem 'byebug', platform: :mri
end

group :test do
  gem 'factory_girl_rails'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov-rcov'
  gem 'simplecov', require: false
end

group :development do
  gem 'letter_opener'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

ruby "2.3.1"