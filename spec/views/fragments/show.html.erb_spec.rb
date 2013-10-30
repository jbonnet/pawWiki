require 'spec_helper'

describe "fragments/show" do
  before(:each) do
    @fragment = assign(:fragment, stub_model(Fragment,
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
