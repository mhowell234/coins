class CoinAttributeType < ActiveRecord::Base
  attr_accessible :value
  
  has_many :coin_attributes
  
end
