require 'spec_helper'

describe "attribute_types/new" do
  before(:each) do
    assign(:attribute_type, stub_model(AttributeType,
      :attribute_type_id => 1,
      :value => "MyText"
    ).as_new_record)
  end

  it "renders new attribute_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attribute_types_path, :method => "post" do
      assert_select "input#attribute_type_attribute_type_id", :name => "attribute_type[attribute_type_id]"
      assert_select "textarea#attribute_type_value", :name => "attribute_type[value]"
    end
  end
end
