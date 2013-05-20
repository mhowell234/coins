require 'spec_helper'

describe "hos/edit" do
  before(:each) do
    @ho = assign(:ho, stub_model(Ho,
      :name => "MyString"
    ))
  end

  it "renders the edit ho form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hos_path(@ho), :method => "post" do
      assert_select "input#ho_name", :name => "ho[name]"
    end
  end
end
