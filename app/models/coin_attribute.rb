class CoinAttribute < ActiveRecord::Base
  attr_accessible :attribute_type_id, :coin_id, :value
  
  belongs_to :coin
  belongs_to :attribute_type
end
