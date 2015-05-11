require 'spec_helper'
require 'pry'
feature 'Cinema Api' do

  # Note: API not stubbed out
  scenario 'page displays local cinemas when you enter post code', js: true do
    visit '/postcode'
    fill_in('input-post', with: 'EC1V 8AZ')
    find_button('submit-post').click
    sleep 3
    expect(page).to have_content('Barbican Cinemas')
    expect(page).to have_content('0.5 miles')
  end

  # scenario 'page displays local cinemas when you enter post code', js: true do
  #   visit '/postcode'
  #   fill_in('Postcode', with: 'EC1V 8AZ')
  #   click_link 'Barbican Cinemas'
  #   expect(page).to have_content 'Far From The Madding Crowd (2015)'
  # end

end
