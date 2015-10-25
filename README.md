[![security](https://hakiri.io/github/CoastDigitalGroup/cdg-mtwarden-warden/master.svg)](https://hakiri.io/github/CoastDigitalGroup/cdg-mtwarden-warden/master)
[![Code Climate](https://codeclimate.com/github/CoastDigitalGroup/cdg-mtwarden-warden/badges/gpa.svg)](https://codeclimate.com/github/CoastDigitalGroup/cdg-mtwarden-warden)
[![Build Status](https://travis-ci.org/CoastDigitalGroup/cdg-mtwarden-warden.svg?branch=master)](https://travis-ci.org/CoastDigitalGroup/cdg-mtwarden-warden)
[![Gem Version](https://badge.fury.io/rb/mtwarden-warden.svg)](https://badge.fury.io/rb/mtwarden-warden)

### CDG Mtwarden Documentation (Warden Edition)
CDG mtwarden-warden gem adds a separate multi-tenant layer that handles all user registrations, multi-tenancy app functions and login through subdomains using Warden authentication gem.  

#### Step 1 - Add Mtwarden to your gemfile
	gem 'mtwarden', '~> 2.0.0'
	bundle exec install

#### Step 2 - Add and migrate mtwarden database tables
	rake railties:install:migrations  
	rake db:migrate

#### Step 3 - Mount the Engine in your Routes File
Add this line at the end of the routes file.  
  
	mount Mtwarden::Engine, :at => '/'

#### Step 4 - Constrain the routs you want secured
All the routes you want to have multi-tenancy login functions goes in between the constraints block.

	constraints(Mtwarden::Constraints::SubdomainRequired) do  
		# Routes Requiring Security & Multi-Tenancy Routes    
	end  