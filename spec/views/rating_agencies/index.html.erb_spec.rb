require 'spec_helper'

describe "rating_agencies/index" do
  before(:each) do
    assign(:rating_agencies, [
      stub_model(RatingAgency,
        :name => "Name",
        :full_name => "Full Name"
      ),
      stub_model(RatingAgency,
        :name => "Name",
        :full_name => "Full Name"
      )
    ])
  end

  it "renders a list of rating_agencies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
  end
end
