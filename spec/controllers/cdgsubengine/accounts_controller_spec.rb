require "rails_helper"

describe Cdgsubengine::AccountsController do
	context "creates the account's schema" do
		let!(:account) { Cdgsubengine::Account.new }

		before do
			expect(Cdgsubengine::Account).to receive(:create_with_owner).
			and_return(account)

			allow(account).to receive(:valid?) { true }
			allow(controller).to receive(:force_authentication!)
		end

		specify do
			post :create, :account => { :name => "First Account" },
			:use_route => :cdgsubengine
		end

		def setup
			@routes = Cdgsubengine::Engine.routes
		end
	end
end