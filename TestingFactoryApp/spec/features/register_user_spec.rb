require 'rails_helper'
feature "guest user creates an account" do
    scenario "successfully creates a new user account" do
        visit "/users/new"
        fill_in "user_first_name", with: "shane" # 'user_first_name' ID
        fill_in "user_last_name", with: "chang"
        fill_in "user_email", with: "schang@codingdojo.com"
        click_button "Create User" # 'Create User' Value
        expect(page).to have_content "User successfully created"
    end
end