require 'spec_helper'

describe "compositions/show" do
  before(:each) do
    @composition = assign(:composition, stub_model(Composition,
      :mint_coin_id => 1,
      :precious_metal_id => 2,
      :percentage => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
  end
end
