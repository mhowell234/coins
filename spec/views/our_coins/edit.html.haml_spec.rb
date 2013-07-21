require 'spec_helper'

describe "our_coins/edit" do
  before(:each) do
    @our_coin = assign(:our_coin, stub_model(OurCoin,
      :mint_coin_id => 1,
      :price_paid => 1.5,
      :origin_id => "",
      :is_silver => false,
      :is_gold => false,
      :is_proof_boolean => "MyString"
    ))
  end

  it "renders the edit our_coin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => our_coins_path(@our_coin), :method => "post" do
      assert_select "input#our_coin_mint_coin_id", :name => "our_coin[mint_coin_id]"
      assert_select "input#our_coin_price_paid", :name => "our_coin[price_paid]"
      assert_select "input#our_coin_origin_id", :name => "our_coin[origin_id]"
      assert_select "input#our_coin_is_silver", :name => "our_coin[is_silver]"
      assert_select "input#our_coin_is_gold", :name => "our_coin[is_gold]"
      assert_select "input#our_coin_is_proof_boolean", :name => "our_coin[is_proof_boolean]"
    end
  end
end
