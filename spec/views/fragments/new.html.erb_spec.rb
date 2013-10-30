require 'spec_helper'

describe "fragments/new" do
  before(:each) do
    assign(:fragment, stub_model(Fragment,
      :title => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new fragment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fragments_path, "post" do
      assert_select "input#fragment_title[name=?]", "fragment[title]"
      assert_select "textarea#fragment_content[name=?]", "fragment[content]"
    end
  end
end
