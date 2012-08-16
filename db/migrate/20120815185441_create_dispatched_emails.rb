class CreateDispatchedEmails < ActiveRecord::Migration
  def change
    create_table :dispatched_emails do |t|
      t.integer :user_id
      t.date :sent_date
      t.integer :email_id
      t.integer :drip_id

      t.timestamps
    end
  end
end
