require 'spec_helper'

describe "mint_dates/show" do
  before(:each) do
    @mint_date = assign(:mint_date, stub_model(MintDate,
      :mint_id => 1,
      :start_year => 2,
      :end_year => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
