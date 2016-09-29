class AddPlanIdToMtwardenAccounts < ActiveRecord::Migration
	def change
		add_column :mtwarden_accounts, :plan_id, :integer
	end
end