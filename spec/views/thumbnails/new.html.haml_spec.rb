require 'spec_helper'

describe "thumbnails/new" do
  before(:each) do
    assign(:thumbnail, stub_model(Thumbnail,
      :coin_id => 1,
      :file_name => "MyString",
      :caption => "MyString"
    ).as_new_record)
  end

  it "renders new thumbnail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => thumbnails_path, :method => "post" do
      assert_select "input#thumbnail_coin_id", :name => "thumbnail[coin_id]"
      assert_select "input#thumbnail_file_name", :name => "thumbnail[file_name]"
      assert_select "input#thumbnail_caption", :name => "thumbnail[caption]"
    end
  end
end
