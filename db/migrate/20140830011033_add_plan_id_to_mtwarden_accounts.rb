class AddPlanIdToMtwardenAccounts < ActiveRecord::Migration[5.1]
  def change

    add_column :mtwarden_accounts, :plan_id, :integer

  end
end
