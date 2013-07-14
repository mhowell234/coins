require 'spec_helper'

describe "photos/edit" do
  before(:each) do
    @photo = assign(:photo, stub_model(Photo,
      :coin_id => 1,
      :file_name => "MyString",
      :catpion => "MyString"
    ))
  end

  it "renders the edit photo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => photos_path(@photo), :method => "post" do
      assert_select "input#photo_coin_id", :name => "photo[coin_id]"
      assert_select "input#photo_file_name", :name => "photo[file_name]"
      assert_select "input#photo_catpion", :name => "photo[catpion]"
    end
  end
end
