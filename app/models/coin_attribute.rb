class CoinAttribute < ActiveRecord::Base
  attr_accessible :coin_attribute_type_id, :value, :coin_id
  
  belongs_to :coin

end
