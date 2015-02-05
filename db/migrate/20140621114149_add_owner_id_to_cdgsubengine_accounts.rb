class AddOwnerIdToCdgsubengineAccounts < ActiveRecord::Migration
  def change
    add_column :cdgsubengine_accounts, :owner_id, :integer
  end
end
