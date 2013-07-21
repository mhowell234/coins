require 'spec_helper'

describe "our_coins/show" do
  before(:each) do
    @our_coin = assign(:our_coin, stub_model(OurCoin,
      :mint_coin_id => 1,
      :price_paid => 1.5,
      :origin_id => "",
      :is_silver => false,
      :is_gold => false,
      :is_proof_boolean => "Is Proof Boolean"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(//)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Is Proof Boolean/)
  end
end
