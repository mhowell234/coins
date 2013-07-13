require 'spec_helper'

describe "CoinValueAttributes" do
  describe "GET /coin_value_attributes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get coin_value_attributes_path
      response.status.should be(200)
    end
  end
end
