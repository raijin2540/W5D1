require 'spec_helper'
require 'rails_helper'

feature "the signup process" do
  scenario "has a new user page" do
    visit ('users/new')
  expect(page).to have_content "New User"
  end
end

feature "signing up a user" do
  scenario "shows username on the homepage after signup" do
      visit ('users')
    expect(page).to have_content "Username"
  end
end
#
feature "logging in" do

  scenario "shows username on the homepage after login" do
    visit ('session')
    expect(page).to have_content "Username"
  end

end

feature "logging out" do

  scenario "begins with a logged out state" do
  visit ('session/new')

  expect(page).to have_content "Log In"
  end

  scenario "doesn't show username on the homepage after logout" do
    visit ('session')
    save_and_open_page
    expect(page).to_not have_content 'Username'
  end

end
