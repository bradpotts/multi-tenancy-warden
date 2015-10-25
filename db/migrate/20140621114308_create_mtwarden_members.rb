class CreateMtwardenMembers < ActiveRecord::Migration
	def change
		create_table :mtwarden_members do |t|
			t.integer :account_id
			t.integer :user_id

			t.timestamps
		end
	end
end