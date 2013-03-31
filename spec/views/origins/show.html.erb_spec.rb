require 'spec_helper'

describe "origins/show" do
  before(:each) do
    @origin = assign(:origin, stub_model(Origin,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
