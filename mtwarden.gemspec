$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mtwarden/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
	s.name        = "mtwarden"
	s.version     = Mtwarden::VERSION
	s.authors     = ["BradPotts"]
	s.email       = ["brad.potts@phcnetworks.net"]
	s.homepage    = "http://www.phcnetworks.net"
	s.summary     = "Multi-Tenant Rails Engine Using Devise."
	s.description = "mtwarden adds basecamp style user logins (multi-tenant authetication using warden gem) to your ruby on rails application."
	s.license     = "GPL-3.0"

	s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

	# Main Files and Security
	s.add_dependency 'rails', '~> 4.2', '>= 4.2.5.1'
	s.add_dependency 'bcrypt', '~> 3.1', '>= 3.1.10'
	s.add_dependency 'warden', '~> 1.2', '>= 1.2.5'

	# Database and Data Seperization
	s.add_dependency 'pg', '~> 0.18.4'
	s.add_dependency "houser", "1.0.2"

	# User and UI Elements
	s.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'

	# On its way out
	s.add_dependency 'braintree', '2.40.0'
	s.add_dependency 'dynamic_form', '1.1.4'

	# Development
	s.add_development_dependency 'simplecov', '~> 0.11.1'

	s.add_development_dependency "rspec-rails", "3.0.1"
	s.add_development_dependency "capybara", "2.3.0"
	s.add_development_dependency "factory_girl", "4.4.0"
	s.add_development_dependency "database_cleaner", "1.3.0"
	s.add_development_dependency "coveralls", '~> 0.8.10'

end