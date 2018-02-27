require 'rails_helper'

feature 'User marks todo incomplete' do
  scenario 'successfully' do
    sign_in

    create_todo 'Buy milk'

    click_on "Complete Todo"
    click_on 'Mark incomplete'


    expect(page).not_to display_completed_todo 'Buy milk'
    expect(page).to display_todo 'Buy milk'
  end


end