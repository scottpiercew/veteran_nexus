require 'capybara/rspec'
require 'spec_helper'

feature 'Visitor visits' do
  scenario 'the home page' do
    visit root_path
    page.should have_content("About")
  end

  # scenario 'links to each category' do
  #   visit root_path
  #   # find_link('Hello').visible?
  #   click_link(‘category_path’)
  # end
end
