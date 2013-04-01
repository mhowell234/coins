require 'spec_helper'

describe "rating_agencies/new" do
  before(:each) do
    assign(:rating_agency, stub_model(RatingAgency,
      :name => "MyString",
      :full_name => "MyString"
    ).as_new_record)
  end

  it "renders new rating_agency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => rating_agencies_path, :method => "post" do
      assert_select "input#rating_agency_name", :name => "rating_agency[name]"
      assert_select "input#rating_agency_full_name", :name => "rating_agency[full_name]"
    end
  end
end
