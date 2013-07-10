require 'spec_helper'

describe "mint_coins/index" do
  before(:each) do
    assign(:mint_coins, [
      stub_model(MintCoin,
        :coin_id => 1,
        :year => 2,
        :year_grouping => "MyText",
        :mint_id => 3,
        :mint_grouping => "MyText",
        :number_minted => 4,
        :number_proof_minted => 5,
        :is_gold => false,
        :is_silver => false
      ),
      stub_model(MintCoin,
        :coin_id => 1,
        :year => 2,
        :year_grouping => "MyText",
        :mint_id => 3,
        :mint_grouping => "MyText",
        :number_minted => 4,
        :number_proof_minted => 5,
        :is_gold => false,
        :is_silver => false
      )
    ])
  end

  it "renders a list of mint_coins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
