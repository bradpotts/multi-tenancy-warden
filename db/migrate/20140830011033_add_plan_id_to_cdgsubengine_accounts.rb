class AddPlanIdToCdgsubengineAccounts < ActiveRecord::Migration
  def change
    add_column :cdgsubengine_accounts, :plan_id, :integer
  end
end
