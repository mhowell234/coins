require 'spec_helper'

describe "our_coins/index" do
  before(:each) do
    assign(:our_coins, [
      stub_model(OurCoin,
        :mint_coin_id => 1,
        :price_paid => 1.5,
        :origin_id => "",
        :is_silver => false,
        :is_gold => false,
        :is_proof_boolean => "Is Proof Boolean"
      ),
      stub_model(OurCoin,
        :mint_coin_id => 1,
        :price_paid => 1.5,
        :origin_id => "",
        :is_silver => false,
        :is_gold => false,
        :is_proof_boolean => "Is Proof Boolean"
      )
    ])
  end

  it "renders a list of our_coins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Is Proof Boolean".to_s, :count => 2
  end
end
