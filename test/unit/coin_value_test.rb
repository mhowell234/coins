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

require 'test_helper'

class CoinValueTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
