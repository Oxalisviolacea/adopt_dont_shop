require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  describe "when I visit '/shelters'" do 
    before(:each) do
      @shelter_1 = Shelter.create!(name: 'Shelter 1',
                          address: 'Address 1',
                          city: 'City 1',
                          state: 'State 1',
                          zip_code: 11111)
      @shelter_2 = Shelter.create!(name: 'Shelter 2',
                          address: 'Address 2',
                          city: 'City 2',
                          state: 'State 2',
                          zip_code: 22222)
    end 

    it "I see the name of each shelter in the database" do
      visit "/shelters"

      expect(page).to have_content(@shelter_1.name)
      expect(page).to have_link(@shelter_1.name)
      expect(page).to have_content(@shelter_2.name)
      expect(page).to have_link(@shelter_2.name)
    end

    # it "I can create a new shelter"
    #   visit "/shelters"

    #   expect(page).to have_link("New Shelter")
    # end 
  end
end