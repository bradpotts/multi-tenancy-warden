[![security](https://hakiri.io/github/PHCNetworks/multi-tenancy-warden/master.svg)](https://hakiri.io/github/PHCNetworks/multi-tenancy-warden/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/multi-tenancy-warden/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/multi-tenancy-warden)
[![Build Status](https://travis-ci.org/PHCNetworks/multi-tenancy-warden.svg?branch=master)](https://travis-ci.org/PHCNetworks/multi-tenancy-warden)
[![Coverage Status](https://coveralls.io/repos/PHCNetworks/multi-tenancy-warden/badge.svg?branch=master&service=github)](https://coveralls.io/github/PHCNetworks/multi-tenancy-warden?branch=master)
[![Gem Version](https://badge.fury.io/rb/mtwarden.svg)](https://badge.fury.io/rb/mtwarden)
  
### Mtwarden(MultiTenancyWarden) Documentation  
PHC mtwarden-warden gem adds a separate multi-tenant layer that handles all user registrations, multi-tenancy app functions and login through subdomains using Warden authentication gem.  
  
#### Step 1 - Add Mtwarden to your gemfile  
	gem 'mtwarden', '~> 2.2'  
	bundle exec install  
  
#### Step 2 - Add and migrate mtwarden database tables  
	rake railties:install:migrations  
	rake db:migrate  

#### Step 3 - Mount the Engine in your Routes File  
Add this line at the top of the routes.rb file.  
  
	require 'mtwarden/constraints/subdomain_required'  

#### Step 4 - Mount the Engine in your Routes File  
Add this line at the end of the routes.rb file.  
  
	mount Mtwarden::Engine, :at => '/'  
  
#### Step 5 - Constrain the routs you want secured  
All the routes you want to have multi-tenancy login functions goes in between the constraints block.  

	constraints(Mtwarden::Constraints::SubdomainRequired) do  
		# Routes Requiring Security & Multi-Tenancy Routes    
	end  
