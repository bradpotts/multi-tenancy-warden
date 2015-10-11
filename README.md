[![security](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine-warden/master.svg)](https://hakiri.io/github/CoastDigitalGroup/cdg-subengine-warden/master)
[![Code Climate](https://codeclimate.com/github/CoastDigitalGroup/cdg-subengine-warden/badges/gpa.svg)](https://codeclimate.com/github/CoastDigitalGroup/cdg-subengine-warden)
[![Build Status](https://travis-ci.org/CoastDigitalGroup/cdg-subengine-warden.svg?branch=master)](https://travis-ci.org/CoastDigitalGroup/cdg-subengine-warden)

### CDG Subengine Documentation (Warden Edition)
CDG subengine-warden multi-tenant gem features user registration and multi-tenant login using Warden to authenticate users.

#### Step 1: Required in gemfile
* Remote Github - gem 'subengine', git: 'http://github.com/CoastDigitalGroup/cdg-subengine-warden.git'

#### Step 2: Add below line to load requried file to the top of routes file. (routes.rb)
require "cdgsubengine/constraints/subdomain_required"  

#### Step 3: Add contraints to routes that requires multitenancy function between the two lines below . (routes.rb)
constraints(Cdgsubengine::Constraints::SubdomainRequired) do  

end

#### Step 4: Copy below line insert at the bottom of the routes file. (routes.rb)
mount Cdgsubengine::Engine, :at => '/'  

#### Security and Login
* Uses Warden for Authetication
* Authetication through Subdomain

#### Account Data Management
* Sub-domain Restriction
* Sub-domain Validation
* Separated Account Data

#### User UI and Interaction
* Gravatar Support

#### InProgress

Stripe Plan & Payment System
* Stripe Payment Integration
* Plan/Subscription Stripe Integration
* Plan Switching & Management