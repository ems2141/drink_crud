require 'spec_helper'

feature DrinkApp do
  scenario 'it shows a welcome page' do
    visit '/drinks'
    expect(page).to have_content 'COFFEE! YUM'
  end

  scenario 'user can create and show a drink' do
    visit '/drinks'
    click_on 'Add a drink'
    fill_in 'Name', with: 'Hot Chocolate'
    click_on 'Add Drink'
    expect(page).to have_content 'Hot Chocolate'
    click_on 'Hot Chocolate'
    expect(page).to have_content 'Name: Hot Chocolate'
  end

  scenario 'user can edit and update a drink' do
    Drink.create!(name: 'coffee')

    visit '/drinks'
    click_on 'coffee'
    click_on 'Edit'
    fill_in 'Name', with: 'tea'
    click_on 'Update Drink'
    expect(page).to have_no_content 'coffee'
    expect(page).to have_content 'tea'
  end

  scenario 'user can delete a drink' do
    Drink.create!(name: 'coffee')

    visit '/drinks'
    click_on 'coffee'
    click_on 'Delete'
    expect(page).to have_no_content 'coffee'
  end
end