class Customer < ActiveRecord::Base
  attr_accessible :drip_id, :email, :name
  has_many :dispatched_drips
end
