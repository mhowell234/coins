require 'spec_helper'

describe "mint_dates/new" do
  before(:each) do
    assign(:mint_date, stub_model(MintDate,
      :mint_id => 1,
      :start_year => 1,
      :end_year => 1
    ).as_new_record)
  end

  it "renders new mint_date form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mint_dates_path, :method => "post" do
      assert_select "input#mint_date_mint_id", :name => "mint_date[mint_id]"
      assert_select "input#mint_date_start_year", :name => "mint_date[start_year]"
      assert_select "input#mint_date_end_year", :name => "mint_date[end_year]"
    end
  end
end
