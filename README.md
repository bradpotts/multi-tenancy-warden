[![security](https://hakiri.io/github/PHCNetworks/multi-tenancy-warden/master.svg)](https://hakiri.io/github/PHCNetworks/multi-tenancy-warden/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/multi-tenancy-warden/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/multi-tenancy-warden)
[![Build Status](https://travis-ci.org/PHCNetworks/multi-tenancy-warden.svg?branch=master)](https://travis-ci.org/PHCNetworks/multi-tenancy-warden)

### Mtwarden(MultiTenancyWarden) Documentation
PHC mtwarden-warden gem adds a separate multi-tenant layer that handles all user registrations, multi-tenancy app functions and login through subdomains using Warden authentication gem.  

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