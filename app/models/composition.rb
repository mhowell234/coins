class Composition < ActiveRecord::Base
  attr_accessible :mint_coin_id, :percentage, :precious_metal_id

  belongs_to :mint_coin
  belongs_to :precious_metal

end
