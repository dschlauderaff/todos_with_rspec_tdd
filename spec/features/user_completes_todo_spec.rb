require 'rails_helper'

feature 'User completes todo' do
  scenario 'successfully' do
    sign_in    
    
    click_on "Add a new todo"
    fill_in 'todo[title]', with: "This is a new todo"
    click_on "Create Todo"
    click_on "Complete Todo"

    expect(page).to have_css '.todos li.completed', text: "This is a new todo"
  end
end