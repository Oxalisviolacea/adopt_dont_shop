class ShelterpetsController < ApplicationController
  def index
    require 'pry'; binding.pry
    @shelter = Shelter.find(params[:id])
    @pets = @shelter.pets
  end

  def new; end

  def create
    pet = Pet.new({
                    image: params[:image],
                    name: params[:name],
                    age: params[:age],
                    sex: params[:sex],
                    shelter_id: params[:shelter_id],
                    status: params[:status],
                    description: params[:description]
                  })

    pet.save

    redirect_to '/shelters/params[:id]/pets'
  end
end