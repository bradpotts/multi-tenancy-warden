require_dependency "subengine/application_controller"

module Subengine
	class Account::DashboardController < ApplicationController
		before_filter :authenticate_user!
	end
end