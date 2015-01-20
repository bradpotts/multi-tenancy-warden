class AddSubdomainToCdgsubengineAccounts < ActiveRecord::Migration
  def change
    add_column :cdgsubengine_accounts, :subdomain, :string
  end
end
