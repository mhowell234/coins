class CoinValueAttribute < ActiveRecord::Base
  attr_accessible :attribute_type_id, :coin_value_id, :value
  
  belongs_to :coin_value
  belongs_to :attribute_type
  
end
