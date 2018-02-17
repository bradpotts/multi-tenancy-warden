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
  spec.add_dependency 'paper_trail', '~> 8.1'
  spec.add_dependency 'pg', '~> 0.21.0'
  spec.add_dependency 'rails', '~> 5.1', '>= 5.1.5'

  # UI & Frontend Dependencies
  spec.add_dependency 'jquery-rails', '~> 4.3'
  spec.add_dependency 'jquery-ui-rails', '~> 6.0'
  spec.add_dependency 'sass-rails', '~> 5.0'
  spec.add_dependency 'webpacker', '~> 3.2'

  # UI & URL Frontend Dependencies Extras
  spec.add_dependency 'country_select', '~> 3.1'
  spec.add_dependency 'friendly_id', '~> 5.2'
  spec.add_dependency 'gravtastic', '~> 3.2'

  # Upload & Media Dependencies
  spec.add_dependency 'carrierwave', '~> 1.2'
  spec.add_dependency 'cloudinary', '~> 1.8'

  # PHCEngine Helper Dependencies
  spec.add_dependency 'phcnotifi', '~> 19.0'
  spec.add_dependency 'phctitleseo', '~> 20.0'

  # WYSIWYG Editor Dependencies
  spec.add_dependency 'tinymce-rails', '~> 4.7'

  # API Dependencies
  spec.add_dependency 'multi_json', '~> 1.13'
  spec.add_dependency 'oj', '~> 3.4'
  spec.add_dependency 'rabl', '~> 0.13.1'
  spec.add_dependency 'responders', '~> 2.4'

  # PHCTheme Dependencies
  spec.add_dependency 'phctheme1', '~> 27.0'
  spec.add_dependency 'phctheme2', '~> 17.0'

  # PHCAdmin Dependencies
  spec.add_dependency 'phcadmin1', '~> 22.0'
  spec.add_dependency 'phcadmin2', '~> 20.0'
  spec.add_dependency 'phcadmin3', '~> 17.0'

  # Warden - Security, Subscriptions & Forms
  spec.add_dependency 'bcrypt', '~> 3.1'
  spec.add_dependency 'braintree', '~> 2.83'

  spec.add_dependency 'dynamic_form', '~> 1.1'
  spec.add_dependency 'houser', '~> 2.0'
  spec.add_dependency 'warden', '~> 1.2'

  # Development & Testing Dependencies
  spec.add_development_dependency 'byebug', '~> 10.0'
  spec.add_development_dependency 'capybara', '~> 2.18'
  spec.add_development_dependency 'database_cleaner', '~> 1.6'

  spec.add_development_dependency 'factory_bot_rails', '~> 4.8'
  spec.add_development_dependency 'faker', '~> 1.8'
  spec.add_development_dependency 'launchy', '~> 2.4'

  spec.add_development_dependency 'rspec-rails', '~> 3.7'
  spec.add_development_dependency 'selenium-webdriver', '~> 3.9'
  spec.add_development_dependency 'sqlite3', '~> 1.3'

  spec.add_development_dependency 'nokogiri', '~> 1.8'
  spec.add_development_dependency 'minitest', '~> 5.11'

  # Extra Development & Testing Dependencies
  spec.add_development_dependency 'letter_opener', '~> 1.6'
  spec.add_development_dependency 'shoulda-matchers', '~> 3.1'
  spec.add_development_dependency 'simplecov', '~> 0.15.1'

end
