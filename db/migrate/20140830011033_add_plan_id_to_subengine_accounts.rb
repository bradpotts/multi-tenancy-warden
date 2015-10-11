class AddPlanIdToSubengineAccounts < ActiveRecord::Migration
	def change
		add_column :subengine_accounts, :plan_id, :integer
	end
end