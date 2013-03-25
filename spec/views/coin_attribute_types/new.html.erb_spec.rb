require 'spec_helper'

describe "coin_attribute_types/new" do
  before(:each) do
    assign(:coin_attribute_type, stub_model(CoinAttributeType,
      :coin_attribute_type_id => 1,
      :value => "MyText"
    ).as_new_record)
  end

  it "renders new coin_attribute_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coin_attribute_types_path, :method => "post" do
      assert_select "input#coin_attribute_type_coin_attribute_type_id", :name => "coin_attribute_type[coin_attribute_type_id]"
      assert_select "textarea#coin_attribute_type_value", :name => "coin_attribute_type[value]"
    end
  end
end
