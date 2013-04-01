require 'spec_helper'

describe "sheldon_rating_categories/show" do
  before(:each) do
    @sheldon_rating_category = assign(:sheldon_rating_category, stub_model(SheldonRatingCategory,
      :title => "Title",
      :description => "MyText",
      :start => 1,
      :end => 2,
      :special_order => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
