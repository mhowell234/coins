require 'spec_helper'

describe "coin_attribute_types/index" do
  before(:each) do
    assign(:coin_attribute_types, [
      stub_model(CoinAttributeType,
        :coin_attribute_type_id => 1,
        :value => "MyText"
      ),
      stub_model(CoinAttributeType,
        :coin_attribute_type_id => 1,
        :value => "MyText"
      )
    ])
  end

  it "renders a list of coin_attribute_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
