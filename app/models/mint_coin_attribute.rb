class MintCoinAttribute < ActiveRecord::Base
  attr_accessible :attribute_type_id, :mint_coin_id, :value

  belongs_to :mint_coin
  belongs_to :attribute_type
end
