require 'spec_helper'

describe "thumbnails/index" do
  before(:each) do
    assign(:thumbnails, [
      stub_model(Thumbnail,
        :coin_id => 1,
        :file_name => "File Name",
        :caption => "Caption"
      ),
      stub_model(Thumbnail,
        :coin_id => 1,
        :file_name => "File Name",
        :caption => "Caption"
      )
    ])
  end

  it "renders a list of thumbnails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
  end
end
