class DispatchedDrip < ActiveRecord::Base
  attr_accessible :customer_id, :drip_id
  belongs_to :customer
  
  has_many :dispatched_emails
  after_create :send_first_email
  
  
  def send_first_email
    dispatched_email = dispatched_emails.build(sent_date: Date.today, email_id: Email.find(:all, :conditions => ['drip_id = ? AND sequence = ?',drip_id,1]).first.id)
    dispatched_email.save
    dispatched_email.send_email
  end
  
  def send_next_email(next_dispatch_id)
    dispatched_email = dispatched_emails.build(sent_date: Date.today, email_id: next_dispatch_id)
    dispatched_email.save
    dispatched_email.send_email
  end
  
end
