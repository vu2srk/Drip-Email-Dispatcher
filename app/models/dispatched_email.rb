class DispatchedEmail < ActiveRecord::Base
  attr_accessible :dispatched_drip_id, :email_id, :sent_date
  
  belongs_to :dispatched_drip
  belongs_to :email
  
  def send_email
    DripMailer.send_email(self).deliver
  end
  
end
