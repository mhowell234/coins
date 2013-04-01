require 'spec_helper'

describe "sheldon_rating_categories/index" do
  before(:each) do
    assign(:sheldon_rating_categories, [
      stub_model(SheldonRatingCategory,
        :title => "Title",
        :description => "MyText",
        :start => 1,
        :end => 2,
        :special_order => 3
      ),
      stub_model(SheldonRatingCategory,
        :title => "Title",
        :description => "MyText",
        :start => 1,
        :end => 2,
        :special_order => 3
      )
    ])
  end

  it "renders a list of sheldon_rating_categories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
