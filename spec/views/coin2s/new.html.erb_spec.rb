require 'spec_helper'

describe "coin2s/new" do
  before(:each) do
    assign(:coin2, stub_model(Coin2,
      :name => "MyString",
      :start_year => 1,
      :end_year => 1,
      :description => "MyText",
      :coin_value_id => 1
    ).as_new_record)
  end

  it "renders new coin2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coin2s_path, :method => "post" do
      assert_select "input#coin2_name", :name => "coin2[name]"
      assert_select "input#coin2_start_year", :name => "coin2[start_year]"
      assert_select "input#coin2_end_year", :name => "coin2[end_year]"
      assert_select "textarea#coin2_description", :name => "coin2[description]"
      assert_select "input#coin2_coin_value_id", :name => "coin2[coin_value_id]"
    end
  end
end
