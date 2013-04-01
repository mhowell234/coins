class PreciousMetal < ActiveRecord::Base
  attr_accessible :conversion_factor, :name, :price_per_gram, :price_per_unit, :symbol, :unit
end
