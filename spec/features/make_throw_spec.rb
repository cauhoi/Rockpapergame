require 'rails_helper'

feature 'Make throw' do
  scenario 'user be able to make throw' do
    visit root_path

    within "#new_game" do
      select "Rock", from: 'sign'
      click_button 'Throw'
    end

    expect(page).to have_content 'You'
  end
end
