require "rails_helper"

describe Mtwarden::AccountsController do
	context "creates the account's schema" do
		let!(:account) { Mtwarden::Account.new }

		before do
			expect(Mtwarden::Account).to receive(:create_with_owner).
			and_return(account)

			allow(account).to receive(:valid?) { true }
			allow(controller).to receive(:force_authentication!)
		end

		specify do
			post :create, :account => { :name => "First Account" },
			:use_route => :mtwarden
		end

		def setup
			@routes = Mtwarden::Engine.routes
		end
	end
end