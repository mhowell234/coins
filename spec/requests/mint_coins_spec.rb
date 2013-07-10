require 'spec_helper'

describe "MintCoins" do
  describe "GET /mint_coins" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get mint_coins_path
      response.status.should be(200)
    end
  end
end
