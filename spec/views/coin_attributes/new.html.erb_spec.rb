require 'spec_helper'

describe "coin_attributes/new" do
  before(:each) do
    assign(:coin_attribute, stub_model(CoinAttribute,
      :coin_id => 1,
      :attribute_type => 1,
      :value => "MyText"
    ).as_new_record)
  end

  it "renders new coin_attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coin_attributes_path, :method => "post" do
      assert_select "input#coin_attribute_coin_id", :name => "coin_attribute[coin_id]"
      assert_select "input#coin_attribute_attribute_type", :name => "coin_attribute[attribute_type]"
      assert_select "textarea#coin_attribute_value", :name => "coin_attribute[value]"
    end
  end
end
