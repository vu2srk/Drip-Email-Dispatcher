class ChangeTableDispatchedEmails < ActiveRecord::Migration
  def up
    add_column :dispatched_emails, :dispatched_drip_id, :integer
  end

  def down
      
  end
end
