require 'spec_helper'

describe "mint_coin_attributes/new" do
  before(:each) do
    assign(:mint_coin_attribute, stub_model(MintCoinAttribute,
      :attribute_type_id => 1,
      :value => "MyString",
      :mint_coin_id => 1
    ).as_new_record)
  end

  it "renders new mint_coin_attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mint_coin_attributes_path, :method => "post" do
      assert_select "input#mint_coin_attribute_attribute_type_id", :name => "mint_coin_attribute[attribute_type_id]"
      assert_select "input#mint_coin_attribute_value", :name => "mint_coin_attribute[value]"
      assert_select "input#mint_coin_attribute_mint_coin_id", :name => "mint_coin_attribute[mint_coin_id]"
    end
  end
end
