class SheltersPetsController < ApplicationController
  def index
    @shelterpets = Shelter.all
  end
end