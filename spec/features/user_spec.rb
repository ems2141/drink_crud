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
end