require 'rails_helper'

RSpec.feature 'User Edit', type: :feature do
  let(:user) { FactoryGirl.create(:user, password: 'testpassword') }
  let(:email) { FactoryGirl.create(:email_address, user: user) }

  scenario 'User logs in and edits name successfully' do
    successful_sign_in_and_navigate
    fill_in 'Last name', with: 'NewLastName'
    click_button 'Update Profile'
    expect(page).to have_content('Profile updated')
    user.reload
    expect(user.last_name).to eq 'NewLastName'
  end

  scenario 'User logs in and edits profile unsuccessfully' do
    successful_sign_in_and_navigate
    fill_in 'Last name', with: ''
    click_button 'Update Profile'
    expect(page).to have_content('Last name can\'t be blank')
    old_last_name = user.last_name
    user.reload
    expect(user.last_name).to eq old_last_name
  end

  def successful_sign_in_and_navigate
    visit root_path
    click_link 'Log in'
    fill_in placeholder: 'Username or Email address', with: user.username
    fill_in 'Password', with: user.password
    click_button 'Log in'
    click_link 'Edit profile'
  end
end
