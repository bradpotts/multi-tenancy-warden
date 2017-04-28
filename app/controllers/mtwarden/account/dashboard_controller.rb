require_dependency "mtwarden/application_controller"

module Mtwarden
	class Account::DashboardController < ApplicationController
		before_filter :authenticate_user!
	end
end
