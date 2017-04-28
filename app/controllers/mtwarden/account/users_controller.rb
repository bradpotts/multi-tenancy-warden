require_dependency "mtwarden/application_controller"

module Mtwarden
	class Account::UsersController < ApplicationController
		def new
			@user = Mtwarden::User.new
		end

		def create
			account = Mtwarden::Account.find_by(:subdomain => request.subdomain)
			user = account.users.create(user_params)
			force_authentication!(user)
			flash[:success] = "You have signed up successfully."
			redirect_to root_path
		end

		private

		def user_params
			params.require(:user).permit(:email, :password, :password_confirmation)
		end
	end
end
