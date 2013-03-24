require 'spec_helper'

describe "coin2s/edit" do
  before(:each) do
    @coin2 = assign(:coin2, stub_model(Coin2,
      :name => "MyString",
      :start_year => 1,
      :end_year => 1,
      :description => "MyText",
      :coin_value_id => 1
    ))
  end

  it "renders the edit coin2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coin2s_path(@coin2), :method => "post" do
      assert_select "input#coin2_name", :name => "coin2[name]"
      assert_select "input#coin2_start_year", :name => "coin2[start_year]"
      assert_select "input#coin2_end_year", :name => "coin2[end_year]"
      assert_select "textarea#coin2_description", :name => "coin2[description]"
      assert_select "input#coin2_coin_value_id", :name => "coin2[coin_value_id]"
    end
  end
end
