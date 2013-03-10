# == Schema Information
#
# Table name: mints
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  symbol        :string(255)
#  alwaysPresent :boolean
#  comments      :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Mint < ActiveRecord::Base

  attr_accessible :alwaysPresent, :comments, :name, :symbol

  validates :name, :presence=> true
  validates :symbol, :presence=> true

end
