require 'spec_helper'

describe "origins/edit" do
  before(:each) do
    @origin = assign(:origin, stub_model(Origin,
      :name => "MyString"
    ))
  end

  it "renders the edit origin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => origins_path(@origin), :method => "post" do
      assert_select "input#origin_name", :name => "origin[name]"
    end
  end
end
