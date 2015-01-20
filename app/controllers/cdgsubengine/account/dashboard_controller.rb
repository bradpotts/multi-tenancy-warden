require_dependency "cdgsubengine/application_controller"

module Cdgsubengine
  class Account::DashboardController < ApplicationController
    before_filter :authenticate_user!
  end
end