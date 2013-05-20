require 'spec_helper'

describe "hos/new" do
  before(:each) do
    assign(:ho, stub_model(Ho,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new ho form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hos_path, :method => "post" do
      assert_select "input#ho_name", :name => "ho[name]"
    end
  end
end
