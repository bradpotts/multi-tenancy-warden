$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mtwarden/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
	spec.name        = "mtwarden"
	spec.version     = Mtwarden::VERSION
	spec.authors     = ["BradPotts"]
	spec.email       = ["developers@phcnetworks.net"]
	spec.homepage    = "https://webdev.phcnetworks.net"
	spec.summary     = "Multi-Tenant Rails Engine Using Warden."
	spec.description = "mtwarden(3) adds basecamp style user logins (multi-tenant authetication using warden gem) to your ruby on rails application."
	spec.license     = "MIT"

	spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

	# Main Dependencies
	spec.add_dependency 'rails', '~> 5.0', '>= 5.0.0.1'
	spec.add_dependency 'pg', '~> 0.19.0'
	spec.add_dependency 'paper_trail', '~> 6.0', '>= 6.0.1'

	# PHCEngines & Theme Dependencies
	spec.add_dependency 'phcadmin3', '~> 1.0'
	spec.add_dependency 'phctitleseo', '~> 3.4', '>= 3.4.3'
	spec.add_dependency 'phcnotifi', '~> 3.4', '>= 3.4.3'

	# UI & Frontend Dependencies
	spec.add_dependency 'jquery-rails', '~> 4.2', '>= 4.2.1'
	spec.add_dependency 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
	spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
	spec.add_dependency 'font-awesome-rails', '~> 4.7'
	spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.6'
	spec.add_dependency 'country_select', '~> 3.0'
	spec.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'

	# API Dependencies
	spec.add_dependency 'oj', '~> 2.18'
	spec.add_dependency 'rabl', '~> 0.13.1'
	spec.add_dependency 'multi_json', '~> 1.12', '>= 1.12.1'
	spec.add_dependency 'responders', '~> 2.3'

	# WYSIWYG Editor Dependencies
	spec.add_dependency 'summernote-rails', '~> 0.8.2.0'
	spec.add_dependency 'codemirror-rails', '~> 5.16'

	# Upload & Media Dependencies
	spec.add_dependency 'carrierwave', '~> 0.11.2'
	spec.add_dependency 'cloudinary', '~> 1.2', '>= 1.2.4'

	# Extra Security, Subscriptions & Forms
	spec.add_dependency 'bcrypt', '~> 3.1', '>= 3.1.10'
	spec.add_dependency 'warden', '~> 1.2', '>= 1.2.5'
	spec.add_dependency 'houser', '~> 2.0'
	spec.add_dependency 'braintree', '~> 2.40'
	spec.add_dependency 'dynamic_form', '1.1.4'

	# Development & Testing Dependencies
	spec.add_development_dependency 'rspec-rails', '~> 3.5', '>= 3.5.2'
	spec.add_development_dependency 'factory_girl_rails', '~> 4.7'
	spec.add_development_dependency 'capybara', '~> 2.11'
	spec.add_development_dependency 'byebug', '~> 9.0', '>= 9.0.6'

	spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.12'
	spec.add_development_dependency 'database_cleaner', '~> 1.5', '>= 1.5.3'

	spec.add_development_dependency 'faker', '~> 1.6', '>= 1.6.6'
	spec.add_development_dependency 'launchy', '~> 2.4', '>= 2.4.3'
	spec.add_development_dependency 'selenium-webdriver', '~> 3.0', '>= 3.0.3'

	# Extra Development & Testing Dependencies
	spec.add_development_dependency 'minitest', '~> 5.9', '>= 5.9.1'
	spec.add_development_dependency 'simplecov', '~> 0.12.0'
	spec.add_development_dependency 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
	spec.add_development_dependency 'letter_opener', '~> 1.4', '>= 1.4.1'

end
