require 'spec_helper'

describe "mint_coin_attributes/edit" do
  before(:each) do
    @mint_coin_attribute = assign(:mint_coin_attribute, stub_model(MintCoinAttribute,
      :attribute_type_id => 1,
      :value => "MyString",
      :mint_coin_id => 1
    ))
  end

  it "renders the edit mint_coin_attribute form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mint_coin_attributes_path(@mint_coin_attribute), :method => "post" do
      assert_select "input#mint_coin_attribute_attribute_type_id", :name => "mint_coin_attribute[attribute_type_id]"
      assert_select "input#mint_coin_attribute_value", :name => "mint_coin_attribute[value]"
      assert_select "input#mint_coin_attribute_mint_coin_id", :name => "mint_coin_attribute[mint_coin_id]"
    end
  end
end
