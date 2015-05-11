require 'spec_helper'

feature 'Cinema Api' do
  scenario 'page displays local cinemas when you enter post code', js: true do
    visit '/postcode'
    fill_in('Postcode', with: 'EC1V 8AZ')
    expect(page).to have_content('Barbican Cinemas')
    expect(page).to have_content('Beech Street')
    expect(page).to have_content('EC2Y 8AE')
  end
  scenario 'page displays local cinemas when you enter post code', js: true do
    visit '/postcode'
    fill_in('Postcode', with: 'EC1V 8AZ')
    click_link 'Barbican Cinemas'
    expect(page).to have_content 'Far From The Madding Crowd (2015)'
  end

end