class AttributeType < ActiveRecord::Base
  attr_accessible :value
  
  has_many :coin_value_attributes
  has_many :coin_attributes
  
end
