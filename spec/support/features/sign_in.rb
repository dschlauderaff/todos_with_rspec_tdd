module Features
  def sign_in
    sign_in_as "person@example.com"
  end

  def sign_in_as(email)
    visit root_path
    fill_in "email", with: email
    click_on "Sign in"
  end
end