require 'spec_helper'

describe "precious_metals/show" do
  before(:each) do
    @precious_metal = assign(:precious_metal, stub_model(PreciousMetal,
      :name => "Name",
      :symbol => "Symbol",
      :unit => "Unit",
      :conversion_factor => 1.5,
      :price_per_unit => 1.5,
      :price_per_gram => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Symbol/)
    rendered.should match(/Unit/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
