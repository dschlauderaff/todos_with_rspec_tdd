require 'rails_helper'

feature "User creates a todo" do
  scenario "succesfully" do
    visit root_path
    click_on "Add a new todo"
    fill_in 'todo[title]', with: "This is a new todo"
    click_on "Create Todo"

    expect(page).to have_css '.todos li', text: "This is a new todo"

  end
end