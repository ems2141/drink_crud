require 'spec_helper'

feature DrinkApp do
  scenario 'it shows a welcome page' do
    visit '/drinks'
    expect(page).to have_content 'COFFEE! YUM'
  end

  scenario 'user can create a drink' do
    visit '/drinks'
    click_on 'Add a drink'
    fill_in 'Name', with: 'Hot Chocolate'
    click_on 'Add Drink'
    expect(page).to have_content 'Hot Chocolate'
  end
end