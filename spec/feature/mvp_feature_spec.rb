require 'spec_helper'

feature 'MVP' do

  scenario 'has a drop down list of movies' do
    visit '/'
    expect(page).to have_css('select')
  end

  scenario 'can select a movie from the drop down list' do
    visit '/'
    result = find('select').find(:option, 'Home').text
    expect(result).to eq'Home'
  end

end