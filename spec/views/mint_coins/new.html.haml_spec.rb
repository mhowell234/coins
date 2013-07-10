require 'spec_helper'

describe "mint_coins/new" do
  before(:each) do
    assign(:mint_coin, stub_model(MintCoin,
      :coin_id => 1,
      :year => 1,
      :year_grouping => "MyText",
      :mint_id => 1,
      :mint_grouping => "MyText",
      :number_minted => 1,
      :number_proof_minted => 1,
      :is_gold => false,
      :is_silver => false
    ).as_new_record)
  end

  it "renders new mint_coin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mint_coins_path, :method => "post" do
      assert_select "input#mint_coin_coin_id", :name => "mint_coin[coin_id]"
      assert_select "input#mint_coin_year", :name => "mint_coin[year]"
      assert_select "textarea#mint_coin_year_grouping", :name => "mint_coin[year_grouping]"
      assert_select "input#mint_coin_mint_id", :name => "mint_coin[mint_id]"
      assert_select "textarea#mint_coin_mint_grouping", :name => "mint_coin[mint_grouping]"
      assert_select "input#mint_coin_number_minted", :name => "mint_coin[number_minted]"
      assert_select "input#mint_coin_number_proof_minted", :name => "mint_coin[number_proof_minted]"
      assert_select "input#mint_coin_is_gold", :name => "mint_coin[is_gold]"
      assert_select "input#mint_coin_is_silver", :name => "mint_coin[is_silver]"
    end
  end
end
