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
  attr_accessible :description, :endYear, :name, :startYear
  belongs_to :coinvalue
end
