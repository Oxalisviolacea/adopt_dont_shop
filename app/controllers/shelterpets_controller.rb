class ShelterpetsController < ApplicationController
  def index
    @shelter = Shelter.find(params[:shelter_id])
    @pets = @shelter.pets
  end

  def new; end

  def create
    pet = Pet.new({
                            name: params[:pet][:name],
                            address: params[:pet][:address],
                            city: params[:pet][:city],
                            state: params[:pet][:state],
                            zip_code: params[:pet][:zip_code]
                          })

    pet.save

    # redirect_to '/pets'
  end
end