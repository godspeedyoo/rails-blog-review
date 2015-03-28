require 'spec_helper'

feature "article" do
  scenario "user creates a new article" do
    visit "/articles/new"

    fill_in "Title", :with => "Test Title"
    fill_in "Text", :with => "Hello world"

    click_button "Create Article" 

    expect(page).to have_text("Test Title")
  end
end