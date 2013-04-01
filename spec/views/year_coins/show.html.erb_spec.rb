require 'spec_helper'

describe "year_coins/show" do
  before(:each) do
    @year_coin = assign(:year_coin, stub_model(YearCoin,
      :coin_id => 1,
      :year => 2,
      :additional_info => "MyText",
      :is_gold => 3,
      :is_silver => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
