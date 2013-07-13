require 'spec_helper'

describe "compositions/new" do
  before(:each) do
    assign(:composition, stub_model(Composition,
      :mint_coin_id => 1,
      :precious_metal_id => 1,
      :percentage => 1.5
    ).as_new_record)
  end

  it "renders new composition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => compositions_path, :method => "post" do
      assert_select "input#composition_mint_coin_id", :name => "composition[mint_coin_id]"
      assert_select "input#composition_precious_metal_id", :name => "composition[precious_metal_id]"
      assert_select "input#composition_percentage", :name => "composition[percentage]"
    end
  end
end
