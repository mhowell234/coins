require 'spec_helper'

describe "sheldon_rating_categories/edit" do
  before(:each) do
    @sheldon_rating_category = assign(:sheldon_rating_category, stub_model(SheldonRatingCategory,
      :title => "MyString",
      :description => "MyText",
      :start => 1,
      :end => 1,
      :special_order => 1
    ))
  end

  it "renders the edit sheldon_rating_category form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sheldon_rating_categories_path(@sheldon_rating_category), :method => "post" do
      assert_select "input#sheldon_rating_category_title", :name => "sheldon_rating_category[title]"
      assert_select "textarea#sheldon_rating_category_description", :name => "sheldon_rating_category[description]"
      assert_select "input#sheldon_rating_category_start", :name => "sheldon_rating_category[start]"
      assert_select "input#sheldon_rating_category_end", :name => "sheldon_rating_category[end]"
      assert_select "input#sheldon_rating_category_special_order", :name => "sheldon_rating_category[special_order]"
    end
  end
end
