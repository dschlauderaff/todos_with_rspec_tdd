require 'rails_helper'

feature "User creates a todo" do
  scenario "succesfully" do
    sign_in

    create_todo 'This is a new todo'

    expect(page).to display_todo 'This is a new todo'

  end
end