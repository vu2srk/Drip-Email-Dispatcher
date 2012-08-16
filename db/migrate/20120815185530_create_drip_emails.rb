class CreateDripEmails < ActiveRecord::Migration
  def change
    create_table :drip_emails do |t|
      t.integer :email_id
      t.integer :drip_id
      t.integer :sequence

      t.timestamps
    end
  end
end
