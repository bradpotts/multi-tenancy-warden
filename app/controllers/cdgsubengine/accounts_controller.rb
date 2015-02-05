require_dependency "cdgsubengine/application_controller"

module Cdgsubengine
  class AccountsController < ApplicationController
    def new
      @account = Cdgsubengine::Account.new
      @account.build_owner
    end

    def create
      @account = Cdgsubengine::Account.create_with_owner(account_params)
      if @account.valid?
        force_authentication!(@account.owner)
        flash[:success] = "Your account has been successfully created."
        redirect_to cdgsubengine.root_url(:subdomain => @account.subdomain)
      else
        flash[:error] = "Sorry, your account could not be created."
        render :new
      end
    end

    private

    def account_params
      params.require(:account).permit(:name, :subdomain, 
        { :owner_attributes => [
          [:email, :password, :password_confirmation]
        ]}
      )
    end
  end
end
