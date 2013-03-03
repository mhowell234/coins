class CoinValue < ActiveRecord::Base
  attr_accessible :description, :name, :value
  has_many :Coin
end
