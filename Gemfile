source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'mechanize'
gem 'rails', '~> 5.0.2'
gem 'pg'
gem 'puma', '~> 3.0'

group :development, :test do
	gem 'pry-byebug'
  gem 'pry-rails'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

ruby "2.3.1"