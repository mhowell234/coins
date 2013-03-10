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
end
