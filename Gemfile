source 'https://rubygems.org'
gem 'rails', '3.2.12'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass-rails' # you need this or you get an err
  gem 'zurb-foundation', '~> 4.0.0'
end

gem 'cancan'
gem 'jquery-rails'
gem "thin", ">= 1.5.0"
gem "mongoid", ">= 3.1.2"
gem "rspec-rails", ">= 2.12.2", :group => [:development, :test]
gem "cucumber-rails", ">= 1.3.1", :group => :test, :require => false
gem "factory_girl_rails", ">= 4.2.0", :group => [:development, :test]
gem "devise", ">= 2.2.3"
gem "quiet_assets", ">= 1.0.2", :group => :development
gem "figaro", ">= 0.6.3"
gem "better_errors", ">= 0.7.2", :group => :development
gem "binding_of_caller", ">= 0.7.1", :group => :development, :platforms => [:mri_19, :rbx]
gem 'carrierwave'
gem 'carrierwave-mongoid', :require => 'carrierwave/mongoid'


group :development do
	gem 'pry'
	gem 'pry-remote'
	gem 'pry-stack_explorer'
	gem 'pry-debugger'
end



group :test do
  gem "mongoid-rspec", ">= 1.7.0", :group => :test
  gem "email_spec", ">= 1.4.0", :group => :test
  gem "database_cleaner", ">= 1.0.0.RC1", :group => :test
  gem "launchy", ">= 2.2.0", :group => :test
  gem "capybara", ">= 2.0.3", :group => :test
end
