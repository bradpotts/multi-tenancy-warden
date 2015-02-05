class AddBraintreeSubscriptionIdToCdgsubengineAccounts < ActiveRecord::Migration
  def change
    add_column :cdgsubengine_accounts, :braintree_subscription_id, :string
  end
end
