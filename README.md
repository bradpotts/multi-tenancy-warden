[![security](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine-warden/master.svg)](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine-warden/master)
[![Code Climate](https://codeclimate.com/github/CoastDigitalGroup/cdg-subengine-warden/badges/gpa.svg)](https://codeclimate.com/github/CoastDigitalGroup/cdg-subengine-warden)
[![Build Status](https://travis-ci.org/CoastDigitalGroup/cdg-subengine-warden.svg?branch=master)](https://travis-ci.org/CoastDigitalGroup/cdg-subengine-warden)
[![Gem Version](https://badge.fury.io/rb/subengine-warden.svg)](https://badge.fury.io/rb/subengine-warden)

### CDG Subengine Documentation (Warden Edition)
CDG subengine-warden multi-tenant gem features user registration and multi-tenant subdomain login using Warden to authenticate users.

#### Step 1 - Add Subengine to your gemfile
    gem 'subengine-warden', '~> 2.0.0'
    bundle exec install

#### Step 2 - Add and migrate subengine database tables
    rake railties:install:migrations  
    rake db:migrate

#### Step 3 - Mount the Engine in your Routes File
Add this line at the end of the routes file.  
  
    mount Subengine::Engine, :at => '/'

#### Step 4 - Constrain the routs you want secured
All the routes you want to have multi-tenacy login functions goes in between the constraints block.

    constraints(Subengine::Constraints::SubdomainRequired) do  
      # Routes Requiring Security & Multi-Tenancy Routes    
    end 
  
#### Security and Login
Uses Warden for Authetication  
Authetication through Subdomain  

#### Account Data Management
Sub-domain Restriction  
Sub-domain Validation  
Separated Account Data  

#### User UI and Interaction
Gravatar Support  

#### InProgress
Stripe Plan & Payment System  
Stripe Payment Integration  
Plan/Subscription Stripe Integration  
Plan Switching & Management  
  