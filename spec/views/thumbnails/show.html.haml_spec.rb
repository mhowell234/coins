require 'spec_helper'

describe "thumbnails/show" do
  before(:each) do
    @thumbnail = assign(:thumbnail, stub_model(Thumbnail,
      :coin_id => 1,
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
