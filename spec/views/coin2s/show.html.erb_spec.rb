require 'spec_helper'

describe "coin2s/show" do
  before(:each) do
    @coin2 = assign(:coin2, stub_model(Coin2,
      :name => "Name",
      :start_year => 1,
      :end_year => 2,
      :description => "MyText",
      :coin_value_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/MyText/)
    rendered.should match(/3/)
  end
end
