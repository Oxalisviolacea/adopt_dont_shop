require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  describe "When I visit a shelter show page and I see a link to delete the shelter" do
      before(:each) do
        @shelter_1 = Shelter.create!(name: 'Shelter_1',
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

    it "I am taken to '/shelters/:id/edit' where I  see a form to edit the shelter's data" do
      visit "/shelters/#{@shelter_1.id}"

      find(:button).click
      expect(current_path).to eq("/shelters")

      expect(page).to have_content(@shelter_2.name)
      expect(page).to have_no_content(@shelter_1.name)
    end
  end
end