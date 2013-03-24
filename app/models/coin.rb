# == Schema Information
#
# Table name: coins
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  startYear   :integer
#  endYear     :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Coin < ActiveRecord::Base
  attr_accessible :coin_value_id, :description, :end_year, :name, :start_year

  belongs_to :coin_value
  
  validates :name, :presence=> true
  validates :start_year, :presence=> true

  validates :coin_value_id, :presence=> true

end
