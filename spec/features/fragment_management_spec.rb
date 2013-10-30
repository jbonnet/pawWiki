require "spec_helper"
require 'capybara/rspec'

feature "fragment management" do
  scenario "creating a new fragment" do
    visit '/' #root_url
    click_link "New fragment"

    fill_in "Name", with: "Awesome fragment"
    click_button "Create fragment"

    expect(page).to have_text("fragment was successfully created.")
  end
end

#feature "Articles", %q{
#  In order to have an awesome blog
#  As an author
#  I want to create and manage articles
#} do
#
#  background do
#    Article.create!(:title => 'One')
#    Article.create!(:title => 'Two')
#  end
#
#  scenario "Article index" do
#    visit '/articles'
#    page.should have_content('One')
#    page.should have_content('Two')
#  end
#
#end
