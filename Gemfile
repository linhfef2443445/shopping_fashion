source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.7"
gem "dotenv-rails"
gem "devise"
# Use mysql as the database for Active Record
gem "mysql2", ">= 0.3.18", "< 0.6.0"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "bootstrap-sass", "~> 3.4.1"
gem "sassc-rails", ">= 2.1.0"
gem "jquery-rails"

gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "font-awesome-sass", "~> 4.2.0"

group :development, :test do
  gem "pry-rails"
  gem "rspec-rails", "~> 3.8"
  gem "rubocop", require: false
  gem "shoulda-matchers"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem "slim-rails"