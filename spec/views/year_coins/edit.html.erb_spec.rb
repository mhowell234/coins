require 'spec_helper'

describe "year_coins/edit" do
  before(:each) do
    @year_coin = assign(:year_coin, stub_model(YearCoin,
      :coin_id => 1,
      :year => 1,
      :additional_info => "MyText",
      :is_gold => 1,
      :is_silver => 1
    ))
  end

  it "renders the edit year_coin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => year_coins_path(@year_coin), :method => "post" do
      assert_select "input#year_coin_coin_id", :name => "year_coin[coin_id]"
      assert_select "input#year_coin_year", :name => "year_coin[year]"
      assert_select "textarea#year_coin_additional_info", :name => "year_coin[additional_info]"
      assert_select "input#year_coin_is_gold", :name => "year_coin[is_gold]"
      assert_select "input#year_coin_is_silver", :name => "year_coin[is_silver]"
    end
  end
end
