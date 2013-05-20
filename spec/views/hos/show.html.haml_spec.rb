require 'spec_helper'

describe "hos/show" do
  before(:each) do
    @ho = assign(:ho, stub_model(Ho,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
