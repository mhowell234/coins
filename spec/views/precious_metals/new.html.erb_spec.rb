require 'spec_helper'

describe "precious_metals/new" do
  before(:each) do
    assign(:precious_metal, stub_model(PreciousMetal,
      :name => "MyString",
      :symbol => "MyString",
      :unit => "MyString",
      :conversion_factor => 1.5,
      :price_per_unit => 1.5,
      :price_per_gram => 1.5
    ).as_new_record)
  end

  it "renders new precious_metal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => precious_metals_path, :method => "post" do
      assert_select "input#precious_metal_name", :name => "precious_metal[name]"
      assert_select "input#precious_metal_symbol", :name => "precious_metal[symbol]"
      assert_select "input#precious_metal_unit", :name => "precious_metal[unit]"
      assert_select "input#precious_metal_conversion_factor", :name => "precious_metal[conversion_factor]"
      assert_select "input#precious_metal_price_per_unit", :name => "precious_metal[price_per_unit]"
      assert_select "input#precious_metal_price_per_gram", :name => "precious_metal[price_per_gram]"
    end
  end
end
