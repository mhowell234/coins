require 'spec_helper'

describe "rating_agencies/edit" do
  before(:each) do
    @rating_agency = assign(:rating_agency, stub_model(RatingAgency,
      :name => "MyString",
      :full_name => "MyString"
    ))
  end

  it "renders the edit rating_agency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rating_agencies_path(@rating_agency), :method => "post" do
      assert_select "input#rating_agency_name", :name => "rating_agency[name]"
      assert_select "input#rating_agency_full_name", :name => "rating_agency[full_name]"
    end
  end
end
