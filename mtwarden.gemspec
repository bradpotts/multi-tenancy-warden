$:.push File.expand_path("../lib", __FILE__)

# Gem Versioning
require "mtwarden/version"

# Gem Specification Information
Gem::Specification.new do |spec|

  spec.name        = "mtwarden"
  spec.version     = Mtwarden::VERSION
  spec.authors     = ["BradPotts"]
  spec.email       = ["info@phcnetworks.net"]
  spec.homepage    = "https://phcnetworks.net/"
  spec.summary     = "Multi-Tenant Rails Engine Using Warden"
  spec.description = "mtwarden(3) adds basecamp style user logins (multi-tenant authetication using warden gem) to your ruby on rails application."
  spec.license     = "MIT"

  #Load Engine Files
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency 'rails', '~> 5.1'
  spec.add_dependency 'pg', '~> 0.20.0'
  spec.add_dependency 'paper_trail', '~> 7.0', '>= 7.0.2'

  # UI & Frontend Dependencies
  spec.add_dependency 'jquery-rails', '~> 4.3', '>= 4.3.1'
  spec.add_dependency 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
  spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
  spec.add_dependency 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
  spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.6'
  spec.add_dependency 'country_select', '~> 3.0'
  spec.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'

  # WYSIWYG Editor Dependencies
  spec.add_dependency 'tinymce-rails', '~> 4.5', '>= 4.5.7'

  # API Dependencies
  spec.add_dependency 'oj', '~> 3.0', '>= 3.0.3'
  spec.add_dependency 'rabl', '~> 0.13.1'
  spec.add_dependency 'multi_json', '~> 1.12', '>= 1.12.1'
  spec.add_dependency 'responders', '~> 2.4'

  # Upload & Media Dependencies
  spec.add_dependency 'carrierwave', '~> 1.1'
  spec.add_dependency 'cloudinary', '~> 1.8'

  # URLS
  spec.add_dependency 'friendly_id', '~> 5.2', '>= 5.2.1'

  # PHCEngine Dependencies
  spec.add_dependency 'phctitleseo', '~> 6.0'
  spec.add_dependency 'phcnotifi', '~> 5.0'

  # PHCTheme Dependencies
  spec.add_dependency 'phctheme1', '~> 12.0'
  spec.add_dependency 'phctheme2', '~> 3.0'

  # PHCAdmin Dependencies
  spec.add_dependency 'phcadmin1', '~> 8.0'
  spec.add_dependency 'phcadmin2', '~> 6.0'
  spec.add_dependency 'phcadmin3', '~> 3.0'

  # Security, Subscriptions & Forms
  spec.add_dependency 'bcrypt', '~> 3.1', '>= 3.1.11'
  spec.add_dependency 'warden', '~> 1.2', '>= 1.2.7'
  spec.add_dependency 'houser', '~> 2.0'
  spec.add_dependency 'braintree', '~> 2.74'
  spec.add_dependency 'dynamic_form', '~> 1.1', '>= 1.1.4'

  # Development & Testing Dependencies
  spec.add_development_dependency 'rspec-rails', '~> 3.5', '>= 3.5.2'
  spec.add_development_dependency 'factory_girl_rails', '~> 4.8'
  spec.add_development_dependency 'capybara', '~> 2.13'
  spec.add_development_dependency 'byebug', '~> 9.0', '>= 9.0.6'

  spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.13'
  spec.add_development_dependency 'database_cleaner', '~> 1.5', '>= 1.5.3'

  spec.add_development_dependency 'faker', '~> 1.7', '>= 1.7.3'
  spec.add_development_dependency 'launchy', '~> 2.4', '>= 2.4.3'
  spec.add_development_dependency 'selenium-webdriver', '~> 3.4'

  # Extra Development & Testing Dependencies
  spec.add_development_dependency 'minitest', '~> 5.10', '>= 5.10.1'
  spec.add_development_dependency 'simplecov', '~> 0.14.1'
  spec.add_development_dependency 'shoulda-matchers', '~> 3.1', '>= 3.1.1'
  spec.add_development_dependency 'letter_opener', '~> 1.4', '>= 1.4.1'

end
