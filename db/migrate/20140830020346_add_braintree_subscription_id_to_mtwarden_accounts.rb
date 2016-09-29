class AddBraintreeSubscriptionIdToMtwardenAccounts < ActiveRecord::Migration
	def change
		add_column :mtwarden_accounts, :braintree_subscription_id, :string
	end
end