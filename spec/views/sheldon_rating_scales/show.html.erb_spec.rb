require 'spec_helper'

describe "sheldon_rating_scales/show" do
  before(:each) do
    @sheldon_rating_scale = assign(:sheldon_rating_scale, stub_model(SheldonRatingScale,
      :title => "Title",
      :sheldon_rating_category_id => 1,
      :value => 1.5,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/1.5/)
    rendered.should match(/MyText/)
  end
end
