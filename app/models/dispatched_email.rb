class DispatchedEmail < ActiveRecord::Base
  attr_accessible :dispatched_drip_id, :email_id, :sent_date
  
  belongs_to :dispatched_drip
  
end
