class AddOwnerIdToMtwardenAccounts < ActiveRecord::Migration
	def change
		add_column :mtwarden_accounts, :owner_id, :integer
	end
end