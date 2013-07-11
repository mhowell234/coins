class MintDate < ActiveRecord::Base
  attr_accessible :end_year, :mint_id, :start_year

  belongs_to :mint

end
