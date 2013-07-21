require 'spec_helper'

describe "our_coin_thumbnails/new" do
  before(:each) do
    assign(:our_coin_thumbnail, stub_model(OurCoinThumbnail,
      :our_coin_id => 1,
      :file_name => "MyString",
      :caption => "MyString"
    ).as_new_record)
  end

  it "renders new our_coin_thumbnail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => our_coin_thumbnails_path, :method => "post" do
      assert_select "input#our_coin_thumbnail_our_coin_id", :name => "our_coin_thumbnail[our_coin_id]"
      assert_select "input#our_coin_thumbnail_file_name", :name => "our_coin_thumbnail[file_name]"
      assert_select "input#our_coin_thumbnail_caption", :name => "our_coin_thumbnail[caption]"
    end
  end
end
