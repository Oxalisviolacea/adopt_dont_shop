require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  describe "when I visit '/shelters/new'" do 
    before(:each) do
      @shelter_1 = Shelter.create!(name: 'Shelter 1',
                          address: 'Address 1',
                          city: 'City 1',
                          state: 'State 1',
                          zip_code: 11111)
    end 

    it "I fill out a form with the shelter's information" do
      visit "/shelters/new"

      expect(page).to have_field('shelter[name]')
      expect(page).to have_field('shelter[address]')
      expect(page).to have_field('shelter[city]')
      expect(page).to have_field('shelter[state]')
      expect(page).to have_field('shelter[zip_code]')
      expect(page).to have_selector("input")
    end
  end
end