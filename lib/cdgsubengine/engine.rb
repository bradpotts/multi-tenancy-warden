require "warden"
require "houser"
require 'gravtastic'

require "dynamic_form"
require "braintree"

module Cdgsubengine
  class Engine < ::Rails::Engine
    isolate_namespace Cdgsubengine

    config.generators do |g|
      g.test_framework :rspec, :view_specs => false
    end

    initializer "cdgsubengine.middleware.warden" do
      Rails.application.config.middleware.use Warden::Manager do |manager|
        manager.default_strategies :password
        
        manager.serialize_into_session do |user|
          user.id
        end

        manager.serialize_from_session do |id|
          Cdgsubengine::User.find(id)
        end
      end
    end

    initializer "cdgsubengine.middleware.fake_braintree_redirect" do
      if Rails.env.test?
        require "fake_braintree_redirect"
        Rails.application.config.middleware.insert_before \
          Warden::Manager,
          FakeBraintreeRedirect
      end
    end

    config.to_prepare do
      root = Cdgsubengine::Engine.root
      extenders_path = root + "app/extenders/**/*.rb"
      Dir.glob(extenders_path) do |file|
        Rails.configuration.cache_classes ? require(file) : load(file)
      end
    end

    initializer 'cdgsubengine.middleware.houser' do
      Rails.application.config.middleware.use Houser::Middleware,
        :class_name => 'Cdgsubengine::Account'
    end
  end
end
