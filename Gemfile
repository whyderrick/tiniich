source "https://rubygems.org"

# git_source(:github) do |repo_name|
#   repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
#   "https://github.com/#{repo_name}.git"
# end

ruby "2.6.0"

gem "autoprefixer-rails"
gem "bulma-rails", "~> 0.7.2"
gem "clearance"
gem "honeybadger"
gem "normalize-rails"
gem "pg"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 5.2.0"
gem "recipient_interceptor"
gem "sassc-rails"
gem "slim-rails"
gem "sprockets", ">= 3.0.0"
gem "title"
gem "uglifier"
gem "bootsnap", require: false


group :development do
  gem "listen"
  gem "rack-mini-profiler", require: false
  gem "spring"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "dotenv-rails"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails"
  gem "suspenders"
end

group :test do
  gem "capybara-selenium"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end
