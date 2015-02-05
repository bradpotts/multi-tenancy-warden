class CreateCdgsubenginePlans < ActiveRecord::Migration
  def change
    create_table :cdgsubengine_plans do |t|
      t.string :name
      t.float :price
      t.string :braintree_id

      t.timestamps
    end
  end
end
