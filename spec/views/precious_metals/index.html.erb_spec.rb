require 'spec_helper'

describe "precious_metals/index" do
  before(:each) do
    assign(:precious_metals, [
      stub_model(PreciousMetal,
        :name => "Name",
        :symbol => "Symbol",
        :unit => "Unit",
        :conversion_factor => 1.5,
        :price_per_unit => 1.5,
        :price_per_gram => 1.5
      ),
      stub_model(PreciousMetal,
        :name => "Name",
        :symbol => "Symbol",
        :unit => "Unit",
        :conversion_factor => 1.5,
        :price_per_unit => 1.5,
        :price_per_gram => 1.5
      )
    ])
  end

  it "renders a list of precious_metals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
