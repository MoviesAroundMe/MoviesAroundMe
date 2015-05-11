require 'spec_helper'

feature 'MVP' do

  scenario 'has a drop down list of movies' do
    visit '/'
    expect(page).to have_css('select')
  end

  scenario 'can select a movie from the drop down list' do
    visit '/'
    result = find('select').find(:option, 'Home').value
    expect(result).to eq 'home'
  end

  scenario 'upon selecting a movie, imdb review is displayed' do
    visit '/'
    find('select').select('Home')
    expect(page).to have_content('IMDb: 6.8')
  end

end
