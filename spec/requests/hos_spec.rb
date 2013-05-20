require 'spec_helper'

describe "Hos" do
  describe "GET /hos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get hos_path
      response.status.should be(200)
    end
  end
end
