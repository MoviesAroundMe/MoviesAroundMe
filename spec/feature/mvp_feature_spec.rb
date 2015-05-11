require 'spec_helper'

feature 'MVP' do

  scenario 'has a drop down list of movies' do
    visit '/'
    expect(page).to have_css('select')
  end

  scenario 'can select a movie from the drop down list' do
    visit '/'
    result = find('select').find(:option, 'Home').value
    expect(result).to eq 'Home'
  end

  scenario 'upon selecting a movie, imdb rating is displayed', js: true do
    visit '/'
    find('select').select('Home')
    expect(page).to have_content('IMDb: 8.6')
    find('select').select('Big Game')
    expect(page).to have_content('IMDb: 6.7')
  end

  scenario 'upon selecting a movie, rotten tomatoes rating is displayed', js: true do
    visit '/'
    find('select').select('Home')
    expect(page).to have_content('Rotten Tomatoes: 5.1')
    find('select').select('Big Game')
    expect(page).to have_content('Rotten Tomatoes: 6.7')
  end

end
