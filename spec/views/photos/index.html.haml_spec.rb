require 'spec_helper'

describe "photos/index" do
  before(:each) do
    assign(:photos, [
      stub_model(Photo,
        :coin_id => 1,
        :file_name => "File Name",
        :catpion => "Catpion"
      ),
      stub_model(Photo,
        :coin_id => 1,
        :file_name => "File Name",
        :catpion => "Catpion"
      )
    ])
  end

  it "renders a list of photos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Catpion".to_s, :count => 2
  end
end
