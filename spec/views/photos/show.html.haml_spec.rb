require 'spec_helper'

describe "photos/show" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :coin_id => 1,
      :file_name => "File Name",
      :catpion => "Catpion"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/File Name/)
    rendered.should match(/Catpion/)
  end
end
