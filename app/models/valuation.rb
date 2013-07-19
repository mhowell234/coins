class Valuation < ActiveRecord::Base
  attr_accessible :mint_coin_id, :rating_agency_id, :sheldon_rating_scale_id, :value, :year
  
  belongs_to :mint_coin
  belongs_to :rating_agency
  belongs_to :sheldon_rating_scale
  
  default_scope joins(:sheldon_rating_scale).order('year DESC')
      
end
