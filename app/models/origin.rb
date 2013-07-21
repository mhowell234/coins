class Origin < ActiveRecord::Base
  attr_accessible :name, :description
  
  has_many :our_coins
end
