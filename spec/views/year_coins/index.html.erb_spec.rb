require 'spec_helper'

describe "year_coins/index" do
  before(:each) do
    assign(:year_coins, [
      stub_model(YearCoin,
        :coin_id => 1,
        :year => 2,
        :additional_info => "MyText",
        :is_gold => 3,
        :is_silver => 4
      ),
      stub_model(YearCoin,
        :coin_id => 1,
        :year => 2,
        :additional_info => "MyText",
        :is_gold => 3,
        :is_silver => 4
      )
    ])
  end

  it "renders a list of year_coins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
