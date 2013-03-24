require 'spec_helper'

describe "coin2s/index" do
  before(:each) do
    assign(:coin2s, [
      stub_model(Coin2,
        :name => "Name",
        :start_year => 1,
        :end_year => 2,
        :description => "MyText",
        :coin_value_id => 3
      ),
      stub_model(Coin2,
        :name => "Name",
        :start_year => 1,
        :end_year => 2,
        :description => "MyText",
        :coin_value_id => 3
      )
    ])
  end

  it "renders a list of coin2s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
