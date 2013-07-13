require 'spec_helper'

describe "mint_coin_attributes/index" do
  before(:each) do
    assign(:mint_coin_attributes, [
      stub_model(MintCoinAttribute,
        :attribute_type_id => 1,
        :value => "Value",
        :mint_coin_id => 2
      ),
      stub_model(MintCoinAttribute,
        :attribute_type_id => 1,
        :value => "Value",
        :mint_coin_id => 2
      )
    ])
  end

  it "renders a list of mint_coin_attributes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
