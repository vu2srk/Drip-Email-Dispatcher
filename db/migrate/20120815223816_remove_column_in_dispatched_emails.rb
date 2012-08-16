class RemoveColumnInDispatchedEmails < ActiveRecord::Migration
  def up
    remove_column :dispatched_emails, :drip_id
    remove_column :dispatched_emails, :user_id
  end

  def down
  end
end
