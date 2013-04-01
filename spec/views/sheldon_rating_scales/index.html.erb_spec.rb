require 'spec_helper'

describe "sheldon_rating_scales/index" do
  before(:each) do
    assign(:sheldon_rating_scales, [
      stub_model(SheldonRatingScale,
        :title => "Title",
        :sheldon_rating_category_id => 1,
        :value => 1.5,
        :description => "MyText"
      ),
      stub_model(SheldonRatingScale,
        :title => "Title",
        :sheldon_rating_category_id => 1,
        :value => 1.5,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of sheldon_rating_scales" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
