class CreateDispatchedDrips < ActiveRecord::Migration
  def change
    create_table :dispatched_drips do |t|
      t.integer :customer_id
      t.integer :drip_id

      t.timestamps
    end
  end
end
