# == Schema Information
#
# Table name: mints
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  symbol        :string(255)
#  always_present :boolean
#  comments      :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Mint < ActiveRecord::Base

  attr_accessible :always_present, :comments, :name, :symbol

  has_many :mint_dates

  validates :name, :presence=> true
  validates :symbol, :presence=> true

  default_scope order('always_present ASC')

end
