class CreateDrips < ActiveRecord::Migration
  def change
    create_table :drips do |t|
      t.string :name

      t.timestamps
    end
  end
end
