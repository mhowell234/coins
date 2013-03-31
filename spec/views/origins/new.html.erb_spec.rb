require 'spec_helper'

describe "origins/new" do
  before(:each) do
    assign(:origin, stub_model(Origin,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new origin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => origins_path, :method => "post" do
      assert_select "input#origin_name", :name => "origin[name]"
    end
  end
end
