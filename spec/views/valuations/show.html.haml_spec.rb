require 'spec_helper'

describe "valuations/show" do
  before(:each) do
    @valuation = assign(:valuation, stub_model(Valuation,
      :mint_coin_id => 1,
      :rating_agency_id => 2,
      :year => 3,
      :sheldon_rating_scale_id => 4,
      :value => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/1.5/)
  end
end
