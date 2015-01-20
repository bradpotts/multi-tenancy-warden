class CreateCdgsubengineAccounts < ActiveRecord::Migration
  def change
    create_table :cdgsubengine_accounts do |t|
      t.string :name

      t.timestamps
    end
  end
end
