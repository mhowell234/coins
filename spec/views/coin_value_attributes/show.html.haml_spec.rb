require 'spec_helper'

describe "coin_value_attributes/show" do
  before(:each) do
    @coin_value_attribute = assign(:coin_value_attribute, stub_model(CoinValueAttribute,
      :attribute_type_id => 1,
      :value => "Value",
      :coin_value_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Value/)
    rendered.should match(/2/)
  end
end
