class CreateMtwardenAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :mtwarden_accounts do |t|

      t.string :name

      t.timestamps

    end
  end
end
