require 'spec_helper'

describe "valuations/new" do
  before(:each) do
    assign(:valuation, stub_model(Valuation,
      :mint_coin_id => 1,
      :rating_agency_id => 1,
      :year => 1,
      :sheldon_rating_scale_id => 1,
      :value => 1.5
    ).as_new_record)
  end

  it "renders new valuation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => valuations_path, :method => "post" do
      assert_select "input#valuation_mint_coin_id", :name => "valuation[mint_coin_id]"
      assert_select "input#valuation_rating_agency_id", :name => "valuation[rating_agency_id]"
      assert_select "input#valuation_year", :name => "valuation[year]"
      assert_select "input#valuation_sheldon_rating_scale_id", :name => "valuation[sheldon_rating_scale_id]"
      assert_select "input#valuation_value", :name => "valuation[value]"
    end
  end
end
