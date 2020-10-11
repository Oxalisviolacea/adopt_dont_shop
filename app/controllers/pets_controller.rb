class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet_by_id = Pet.find(params[:id])
  end
end