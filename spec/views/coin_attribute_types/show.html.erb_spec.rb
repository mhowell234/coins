require 'spec_helper'

describe "coin_attribute_types/show" do
  before(:each) do
    @coin_attribute_type = assign(:coin_attribute_type, stub_model(CoinAttributeType,
      :coin_attribute_type_id => 1,
      :value => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
