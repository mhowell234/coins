class Coin < ActiveRecord::Base
  attr_accessible :description, :endYear, :name, :startYear
  belongs_to :CoinValue
end
