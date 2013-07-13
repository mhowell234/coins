require 'spec_helper'

describe "valuations/index" do
  before(:each) do
    assign(:valuations, [
      stub_model(Valuation,
        :mint_coin_id => 1,
        :rating_agency_id => 2,
        :year => 3,
        :sheldon_rating_scale_id => 4,
        :value => 1.5
      ),
      stub_model(Valuation,
        :mint_coin_id => 1,
        :rating_agency_id => 2,
        :year => 3,
        :sheldon_rating_scale_id => 4,
        :value => 1.5
      )
    ])
  end

  it "renders a list of valuations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
