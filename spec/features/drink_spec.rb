require 'spec_helper'

feature DrinkApp do
  scenario 'it shows a welcome page' do
    visit '/drinks'
    expect(page).to have_content 'COFFEE! YUM'
  end
end