# == Schema Information
#
# Table name: coin_values
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  value       :float
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CoinValue < ActiveRecord::Base

  attr_accessible :description, :name, :value

  has_many :coins
  has_many :coin_value_attributes

  validates :name, :presence=> true, :uniqueness=> true
  validates :value, :presence=> true


  # Displays the years this coin was minted
  def years

    firstCoin = Coin.where(["coin_value_id = :cv", { :cv => id }]).order("coins.start_year ASC").find(:first)
    lastCoin = Coin.where(["coin_value_id = :cv", { :cv => id }]).order("coins.start_year ASC").find(:last)

    start_year = firstCoin.start_year
    end_year = lastCoin.end_year

    if end_year == 0
      require 'date'
      end_year_str = Date.today.strftime("%Y")
    else
      end_year_str = end_year
    end
      
    return "#{start_year} - #{end_year_str}"

  end


end
