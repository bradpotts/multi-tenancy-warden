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
  spec.summary     = "Rails 5.1 Engine - MTWarden"
  spec.description = "MTWarden Rails 5.1 engine adds basecamp style user logins (multi-tenant authetication using warden gem) to your ruby on rails application."
  spec.license     = "MIT"

  #Load Engine Files
  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # Main Dependencies
  spec.add_dependency 'paper_trail', '~> 8.0', '>= 8.0.1'
  spec.add_dependency 'pg', '~> 0.21.0'
  spec.add_dependency 'rails', '~> 5.1', '>= 5.1.4'

  # UI & Frontend Dependencies
  spec.add_dependency 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
  spec.add_dependency 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
  spec.add_dependency 'jquery-rails', '~> 4.3', '>= 4.3.1'
  spec.add_dependency 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
  spec.add_dependency 'sass-rails', '~> 5.0', '>= 5.0.7'
  spec.add_dependency 'webpacker', '~> 3.0', '>= 3.0.2'

  # UI & Frontend Dependencies Extras
  spec.add_dependency 'country_select', '~> 3.1', '>= 3.1.1'
  spec.add_dependency 'gravtastic', '~> 3.2', '>= 3.2.6'

  # WYSIWYG Editor Dependencies
  spec.add_dependency 'tinymce-rails', '~> 4.7', '>= 4.7.3'

  # API Dependencies
  spec.add_dependency 'multi_json', '~> 1.12', '>= 1.12.2'
  spec.add_dependency 'oj', '~> 3.3', '>= 3.3.9'
  spec.add_dependency 'rabl', '~> 0.13.1'
  spec.add_dependency 'responders', '~> 2.4'

  # Upload & Media Dependencies
  spec.add_dependency 'carrierwave', '~> 1.2', '>= 1.2.1'
  spec.add_dependency 'cloudinary', '~> 1.8', '>= 1.8.2'

  # URL Dependencies
  spec.add_dependency 'friendly_id', '~> 5.2', '>= 5.2.3'

  # PHCEngine Dependencies
  spec.add_dependency 'phcnotifi', '~> 12.0'
  spec.add_dependency 'phctitleseo', '~> 13.0'

  # PHCTheme Dependencies
  spec.add_dependency 'phctheme1', '~> 21.0'
  spec.add_dependency 'phctheme2', '~> 11.0'

  # PHCAdmin Dependencies
  spec.add_dependency 'phcadmin1', '~> 16.0'
  spec.add_dependency 'phcadmin2', '~> 14.0'
  spec.add_dependency 'phcadmin3', '~> 11.0'

  # Security, Subscriptions & Forms
  spec.add_dependency 'bcrypt', '~> 3.1', '>= 3.1.11'
  spec.add_dependency 'braintree', '~> 2.80'
  spec.add_dependency 'dynamic_form', '~> 1.1', '>= 1.1.4'
  spec.add_dependency 'houser', '~> 2.0'
  spec.add_dependency 'warden', '~> 1.2', '>= 1.2.7'

  # Development & Testing Dependencies
  spec.add_development_dependency 'byebug', '~> 9.1'
  spec.add_development_dependency 'capybara', '~> 2.16', '>= 2.16.1'
  spec.add_development_dependency 'database_cleaner', '~> 1.6', '>= 1.6.2'

  spec.add_development_dependency 'factory_bot_rails', '~> 4.8', '>= 4.8.2'
  spec.add_development_dependency 'faker', '~> 1.8', '>= 1.8.4'
  spec.add_development_dependency 'launchy', '~> 2.4', '>= 2.4.3'

  spec.add_development_dependency 'rspec-rails', '~> 3.7', '>= 3.7.2'
  spec.add_development_dependency 'selenium-webdriver', '~> 3.7'
  spec.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.13'

  spec.add_development_dependency 'nokogiri', '~> 1.8', '>= 1.8.1'

  # Extra Development & Testing Dependencies
  spec.add_development_dependency 'minitest', '~> 5.10', '>= 5.10.3'
  spec.add_development_dependency 'letter_opener', '~> 1.4', '>= 1.4.1'
  spec.add_development_dependency 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
  spec.add_development_dependency 'simplecov', '~> 0.15.1'

end
