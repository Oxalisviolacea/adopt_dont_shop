require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  describe "when I visit '/shelters/:id'" do 
    before(:each) do
      @shelter_1 = Shelter.create!(name: 'Shelter 1',
                          address: 'Address 1',
                          city: 'City 1',
                          state: 'State 1',
                          zip_code: 11111)
    end 

    it "I see the shelter with that id including the shelter's information" do
      visit "/shelters/1"

      expect(page).to have_content(@shelter_1.name)
      expect(page).to have_content(@shelter_1.address)
      expect(page).to have_content(@shelter_1.city)
      expect(page).to have_content(@shelter_1.state)
      expect(page).to have_content(@shelter_1.zip_code)
    end
  end
end