require 'spec_helper'

describe "compositions/index" do
  before(:each) do
    assign(:compositions, [
      stub_model(Composition,
        :mint_coin_id => 1,
        :precious_metal_id => 2,
        :percentage => 1.5
      ),
      stub_model(Composition,
        :mint_coin_id => 1,
        :precious_metal_id => 2,
        :percentage => 1.5
      )
    ])
  end

  it "renders a list of compositions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
