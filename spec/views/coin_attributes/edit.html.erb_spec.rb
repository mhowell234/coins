require 'spec_helper'

describe "coin_attributes/edit" do
  before(:each) do
    @coin_attribute = assign(:coin_attribute, stub_model(CoinAttribute,
      :coin_id => 1,
      :attribute_type => 1,
      :value => "MyText"
    ))
  end

  it "renders the edit coin_attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coin_attributes_path(@coin_attribute), :method => "post" do
      assert_select "input#coin_attribute_coin_id", :name => "coin_attribute[coin_id]"
      assert_select "input#coin_attribute_attribute_type", :name => "coin_attribute[attribute_type]"
      assert_select "textarea#coin_attribute_value", :name => "coin_attribute[value]"
    end
  end
end
