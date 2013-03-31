require 'spec_helper'

describe "origins/index" do
  before(:each) do
    assign(:origins, [
      stub_model(Origin,
        :name => "Name"
      ),
      stub_model(Origin,
        :name => "Name"
      )
    ])
  end

  it "renders a list of origins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
