require 'spec_helper'

feature 'MVP' do

  scenario 'has a drop down list of movies' do
    visit '/'
    expect(page).to have_css('select')
  end

end