require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  describe "when I visit '/pets'" do 
    before(:each) do
      @shelter_1 = Shelter.create!(id: 1,
                          name: 'Shelter 1',
                          address: 'Address 1',
                          city: 'City 1',
                          state: 'State 1',
                          zip_code: 11111)

      @pet_1 = Pet.create!(image: 'google.com',
                          name: 'name 1',
                          age: 1,
                          sex: 'female',
                          shelter_id: 1,
                        status: 'adoptable',
                      description: 'cat')

      @pet_2 = Pet.create!(image: 'google.com',
                          name: 'name 2',
                          age: 2,
                          sex: 'sex 2',
                          shelter_id: 1,
                          status: 'adoptable',
                          description: 'dog')
    end 

    it "I see the name of each pet in the database" do
      visit "/pets"

      expect(page).to have_link(@pet_1.name)
      expect(page).to have_content(@pet_1.age)
      expect(page).to have_link(@pet_1.sex)
      expect(page).to have_link(@pet_1.shelter_id)
    end
  end
end