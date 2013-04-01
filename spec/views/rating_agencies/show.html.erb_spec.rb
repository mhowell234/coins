require 'spec_helper'

describe "rating_agencies/show" do
  before(:each) do
    @rating_agency = assign(:rating_agency, stub_model(RatingAgency,
      :name => "Name",
      :full_name => "Full Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Full Name/)
  end
end
