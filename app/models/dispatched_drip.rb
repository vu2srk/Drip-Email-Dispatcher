class DispatchedDrip < ActiveRecord::Base
  attr_accessible :customer_id, :drip_id
  belongs_to :customer
  
  has_many :dispatched_emails
end
