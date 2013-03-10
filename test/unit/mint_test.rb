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

require 'test_helper'

class MintTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
