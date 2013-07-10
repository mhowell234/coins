require 'spec_helper'

describe "mint_coins/show" do
  before(:each) do
    @mint_coin = assign(:mint_coin, stub_model(MintCoin,
      :coin_id => 1,
      :year => 2,
      :year_grouping => "MyText",
      :mint_id => 3,
      :mint_grouping => "MyText",
      :number_minted => 4,
      :number_proof_minted => 5,
      :is_gold => false,
      :is_silver => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
