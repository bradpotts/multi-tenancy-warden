class AddOwnerIdToMtwardenAccounts < ActiveRecord::Migration[5.0]
	def change
		add_column :mtwarden_accounts, :owner_id, :integer
	end
end