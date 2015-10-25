class AddSubdomainToMtwardenAccounts < ActiveRecord::Migration
	def change
		add_column :mtwarden_accounts, :subdomain, :string
		add_index :mtwarden_accounts, :subdomain
	end
end