require 'spec_helper'

describe "sheldon_rating_scales/new" do
  before(:each) do
    assign(:sheldon_rating_scale, stub_model(SheldonRatingScale,
      :title => "MyString",
      :sheldon_rating_category_id => 1,
      :value => 1.5,
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new sheldon_rating_scale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sheldon_rating_scales_path, :method => "post" do
      assert_select "input#sheldon_rating_scale_title", :name => "sheldon_rating_scale[title]"
      assert_select "input#sheldon_rating_scale_sheldon_rating_category_id", :name => "sheldon_rating_scale[sheldon_rating_category_id]"
      assert_select "input#sheldon_rating_scale_value", :name => "sheldon_rating_scale[value]"
      assert_select "textarea#sheldon_rating_scale_description", :name => "sheldon_rating_scale[description]"
    end
  end
end
