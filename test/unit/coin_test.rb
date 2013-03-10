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

require 'test_helper'

class CoinTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
