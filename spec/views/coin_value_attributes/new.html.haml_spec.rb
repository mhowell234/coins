require 'spec_helper'

describe "coin_value_attributes/new" do
  before(:each) do
    assign(:coin_value_attribute, stub_model(CoinValueAttribute,
      :attribute_type_id => 1,
      :value => "MyString",
      :coin_value_id => 1
    ).as_new_record)
  end

  it "renders new coin_value_attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coin_value_attributes_path, :method => "post" do
      assert_select "input#coin_value_attribute_attribute_type_id", :name => "coin_value_attribute[attribute_type_id]"
      assert_select "input#coin_value_attribute_value", :name => "coin_value_attribute[value]"
      assert_select "input#coin_value_attribute_coin_value_id", :name => "coin_value_attribute[coin_value_id]"
    end
  end
end
