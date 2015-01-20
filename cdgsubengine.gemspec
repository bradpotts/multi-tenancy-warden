$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cdgsubengine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cdg-subengine"
  s.version     = Cdgsubengine::VERSION
  s.authors     = ["Brad Potts - CDG"]
  s.email       = ["brad@coastdigitalgroup.com"]
  s.homepage    = "http://www.coastdigitalgroup.com"
  s.summary     = "A Simple Subscription and User Login System for Ruby on Rails Apps."
  s.description = "Simple Subscription and Login System Rails Engine for Ruby on Rails App."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  # Dependencies for Production Environment
  s.add_dependency "rails", "~> 4.1.1"
  s.add_dependency "bcrypt", "3.1.7"
  s.add_dependency "warden", "1.2.3"
  s.add_dependency "dynamic_form", "1.1.4"
  s.add_dependency "pg"
  s.add_dependency "apartment", "0.25.1"

  # Dependencies for Development Environment
  s.add_development_dependency "rspec-rails", "3.0.1"
  s.add_development_dependency "capybara", "2.3.0"
  s.add_development_dependency "factory_girl", "4.4.0"
  s.add_development_dependency "database_cleaner", "1.3.0"
  
end