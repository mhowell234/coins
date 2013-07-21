require 'spec_helper'

describe "our_coin_thumbnails/show" do
  before(:each) do
    @our_coin_thumbnail = assign(:our_coin_thumbnail, stub_model(OurCoinThumbnail,
      :our_coin_id => 1,
      :file_name => "File Name",
      :caption => "Caption"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/File Name/)
    rendered.should match(/Caption/)
  end
end
