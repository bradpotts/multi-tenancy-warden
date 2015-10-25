class CreateMtwardenAccounts < ActiveRecord::Migration
	def change
		create_table :mtwarden_accounts do |t|
			t.string :name

			t.timestamps
		end
	end
end