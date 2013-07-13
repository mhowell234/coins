require 'spec_helper'

describe "coin_attributes/index" do
  before(:each) do
    assign(:coin_attributes, [
      stub_model(CoinAttribute,
        :coin_id => 1,
        :attribute_type => 2,
        :value => "MyText"
      ),
      stub_model(CoinAttribute,
        :coin_id => 1,
        :attribute_type => 2,
        :value => "MyText"
      )
    ])
  end

  it "renders a list of coin_attributes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
