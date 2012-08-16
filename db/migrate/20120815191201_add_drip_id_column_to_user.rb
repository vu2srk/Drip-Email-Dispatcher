class AddDripIdColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :drip_id, :integer
  end
end
