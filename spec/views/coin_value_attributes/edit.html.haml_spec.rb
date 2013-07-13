require 'spec_helper'

describe "coin_value_attributes/edit" do
  before(:each) do
    @coin_value_attribute = assign(:coin_value_attribute, stub_model(CoinValueAttribute,
      :attribute_type_id => 1,
      :value => "MyString",
      :coin_value_id => 1
    ))
  end

  it "renders the edit coin_value_attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coin_value_attributes_path(@coin_value_attribute), :method => "post" do
      assert_select "input#coin_value_attribute_attribute_type_id", :name => "coin_value_attribute[attribute_type_id]"
      assert_select "input#coin_value_attribute_value", :name => "coin_value_attribute[value]"
      assert_select "input#coin_value_attribute_coin_value_id", :name => "coin_value_attribute[coin_value_id]"
    end
  end
end
