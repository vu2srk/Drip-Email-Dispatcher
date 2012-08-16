class AddIntervalColumnToEmail < ActiveRecord::Migration
  def change
    add_column :emails, :interval, :integer
    add_column :emails, :sequence, :integer
    add_column :emails, :drip_id, :integer
  end
end
