class AddBraintreeSubscriptionIdToSubengineAccounts < ActiveRecord::Migration
	def change
		add_column :subengine_accounts, :braintree_subscription_id, :string
	end
end