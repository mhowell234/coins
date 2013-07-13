require 'spec_helper'

describe "coin_value_attributes/index" do
  before(:each) do
    assign(:coin_value_attributes, [
      stub_model(CoinValueAttribute,
        :attribute_type_id => 1,
        :value => "Value",
        :coin_value_id => 2
      ),
      stub_model(CoinValueAttribute,
        :attribute_type_id => 1,
        :value => "Value",
        :coin_value_id => 2
      )
    ])
  end

  it "renders a list of coin_value_attributes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
