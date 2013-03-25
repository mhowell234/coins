class CoinAttribute < ActiveRecord::Base
  attr_accessible :coin_attribute_type, :coin_attribute_value, :coin_id
  
  belongs_to :coin

end
