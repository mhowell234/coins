require 'spec_helper'

describe "PreciousMetals" do
  describe "GET /precious_metals" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get precious_metals_path
      response.status.should be(200)
    end
  end
end
