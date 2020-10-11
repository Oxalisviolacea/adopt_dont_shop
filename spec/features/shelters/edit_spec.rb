require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  describe "When I visit a shelter show page and I click the link Update Shelter" do
      before(:each) do
        @shelter_1 = Shelter.create!(name: 'Shelter_1',
                            address: 'Address 1',
                            city: 'City 1',
                            state: 'State 1',
                            zip_code: 11111)
    end 

    it "I am taken to '/shelters/:id/edit' where I  see a form to edit the shelter's data" do
      visit "/shelters/#{@shelter_1.id}"

      click_link 'Update Shelter'
      expect(current_path).to eq("/shelters/#{@shelter_1.id}/edit")

      expect(page).to have_field('shelter[name]')
      expect(page).to have_field('shelter[address]')
      expect(page).to have_field('shelter[city]')
      expect(page).to have_field('shelter[state]')
      expect(page).to have_field('shelter[zip_code]')

      fill_in 'shelter[name]', with: 'Shelter 1'
      find(:button).click
      expect(current_path).to eq("/shelters/#{@shelter_1.id}")
    end
  end
end