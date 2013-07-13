require 'spec_helper'

describe "attribute_types/show" do
  before(:each) do
    @attribute_type = assign(:attribute_type, stub_model(AttributeType,
      :attribute_type_id => 1,
      :value => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
  end
end
