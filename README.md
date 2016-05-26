[![security](https://hakiri.io/github/PHCNetworks/multi-tenancy-warden/master.svg)](https://hakiri.io/github/PHCNetworks/multi-tenancy-warden/master)
[![Code Climate](https://codeclimate.com/github/PHCNetworks/multi-tenancy-warden/badges/gpa.svg)](https://codeclimate.com/github/PHCNetworks/multi-tenancy-warden)
[![Issue Count](https://codeclimate.com/github/PHCNetworks/multi-tenancy-warden/badges/issue_count.svg)](https://codeclimate.com/github/PHCNetworks/multi-tenancy-warden)
[![Gem Version](https://badge.fury.io/rb/mtwarden.svg)](https://badge.fury.io/rb/mtwarden)
  
### Mtwarden(MultiTenancyWarden) Documentation  
mtwarden(2) adds basecamp style user logins to your ruby on rails application.
  
#### Step 1 - Add Mtwarden to your gemfile  
	gem 'mtwarden', '~> 2.2', '>= 2.2.7'
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
  
#### Step 5 - Constrain the routes you want secured in your routes.rb file.
All the routes you want to have multi-tenancy login functions goes in between the constraints block.  

	constraints(Mtwarden::Constraints::SubdomainRequired) do  
		# Routes Requiring Security & Multi-Tenancy Routes    
	end  
