class AddSubdomainToCdgsubengineAccounts < ActiveRecord::Migration
  def change
    add_column :cdgsubengine_accounts, :subdomain, :string
    add_index :cdgsubengine_accounts, :subdomain
  end
end