class CreateRunDrips < ActiveRecord::Migration
  def change
    create_table :run_drips do |t|

      t.timestamps
    end
  end
end
