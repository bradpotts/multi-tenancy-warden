require "rails_helper"

describe Subengine::AccountsController do
	context "creates the account's schema" do
		let!(:account) { Subengine::Account.new }

		before do
			expect(Subengine::Account).to receive(:create_with_owner).
			and_return(account)

			allow(account).to receive(:valid?) { true }
			allow(controller).to receive(:force_authentication!)
		end

		specify do
			post :create, :account => { :name => "First Account" },
			:use_route => :subengine
		end

		def setup
			@routes = Subengine::Engine.routes
		end
	end
end