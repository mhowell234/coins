require 'spec_helper'

describe "OurCoinThumbnails" do
  describe "GET /our_coin_thumbnails" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get our_coin_thumbnails_path
      response.status.should be(200)
    end
  end
end
