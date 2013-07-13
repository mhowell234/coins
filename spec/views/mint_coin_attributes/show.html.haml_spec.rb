require 'spec_helper'

describe "mint_coin_attributes/show" do
  before(:each) do
    @mint_coin_attribute = assign(:mint_coin_attribute, stub_model(MintCoinAttribute,
      :attribute_type_id => 1,
      :value => "Value",
      :mint_coin_id => 2
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
