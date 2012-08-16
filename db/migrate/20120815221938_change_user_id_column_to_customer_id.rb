class ChangeUserIdColumnToCustomerId < ActiveRecord::Migration
  def up
    rename_column :dispatched_emails, :user_id, :customer_id
  end

  def down
  end
end
