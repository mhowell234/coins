class YearCoin < ActiveRecord::Base
  attr_accessible :additional_info, :coin_id, :is_gold, :is_silver, :year
  
  
  belongs_to :coin

end
