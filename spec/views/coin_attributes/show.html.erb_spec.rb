require 'spec_helper'

describe "coin_attributes/show" do
  before(:each) do
    @coin_attribute = assign(:coin_attribute, stub_model(CoinAttribute,
      :coin_id => 1,
      :coin_attribute_type => 2,
      :coin_attribute_value => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
  end
end
