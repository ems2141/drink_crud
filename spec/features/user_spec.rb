require 'spec_helper'

feature 'User Login' do
  scenario 'user can register' do
    visit '/'
    fill_in 'Email', with: 'ellie@example.com'
    fill_in 'Password', with: 'password'
    click_on 'Register'
    expect(page).to have_content 'Welcome ellie@example.com'
    expect(page).to have_content 'COFFEE! YUM'
  end

  scenario 'user can logout' do
    visit '/'
    fill_in 'Email', with: 'ellie@example.com'
    fill_in 'Password', with: 'password'
    click_on 'Register'

    click_on 'Logout'
    expect(page).to have_content 'Welcome to the drink site where you can...CRUD DRINKS!'
  end
end