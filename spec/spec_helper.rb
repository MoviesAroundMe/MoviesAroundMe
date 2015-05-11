require 'capybara/rspec'
require './app/movies_around_me'
require 'capybara/poltergeist'

Capybara.javascript_driver = :poltergeist

Capybara.app = MoviesAroundMe
