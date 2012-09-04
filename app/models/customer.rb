class Customer < ActiveRecord::Base
  attr_accessible :drip_id, :email, :name
  has_many :dispatched_drips
  
  def sign_up
    
  end
  
  def quiz_completed(dispatched_email)
    #DripMailer.quiz_email(dispatched_email).deliver
  end
  
  def demo_started
    @dispatched_drip = dispatched_drips.build(drip_id: 3)
    @dispatched_drip.save
    self.drip_id = 3
    save!
  end
  
  def integrated
  
  end
  
  def life_cycle_setup
  
  end
  
end
