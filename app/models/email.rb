class Email < ActiveRecord::Base
  attr_accessible :body, :subject, :drip_id, :sequence, :interval
  belongs_to :drip
end
