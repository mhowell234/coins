require 'spec_helper'

describe "mint_dates/index" do
  before(:each) do
    assign(:mint_dates, [
      stub_model(MintDate,
        :mint_id => 1,
        :start_year => 2,
        :end_year => 3
      ),
      stub_model(MintDate,
        :mint_id => 1,
        :start_year => 2,
        :end_year => 3
      )
    ])
  end

  it "renders a list of mint_dates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
