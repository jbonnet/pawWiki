require 'spec_helper'

describe "fragments/edit" do
  before(:each) do
    @fragment = assign(:fragment, stub_model(Fragment,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit fragment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", fragment_path(@fragment), "post" do
      assert_select "input#fragment_title[name=?]", "fragment[title]"
      assert_select "textarea#fragment_content[name=?]", "fragment[content]"
    end
  end
end
