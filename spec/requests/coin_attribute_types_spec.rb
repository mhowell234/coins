require 'spec_helper'

describe "CoinAttributeTypes" do
  describe "GET /coin_attribute_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get coin_attribute_types_path
      response.status.should be(200)
    end
  end
end
