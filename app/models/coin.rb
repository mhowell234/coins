# == Schema Information
#
# Table name: coins
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  start_year   :integer
#  end_year     :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  coin_value_id :integer
#

class Coin < ActiveRecord::Base
  attr_accessible :coin_value_id, :description, :end_year, :name, :start_year

  belongs_to :coin_value
  has_many :coin_attributes
  
  
  validates :name, :presence=> true
  validates :start_year, :presence=> true

  validates :coin_value_id, :presence=> true


  # Displays the years this coin was minted
  def years
    
    if end_year == 0
      require 'date'
      end_year_str = Date.today.strftime("%Y")
    else
      end_year_str = end_year
    end
      
    return "#{start_year} - #{end_year_str}"
  end


end
