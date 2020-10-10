class PetsController < ApplicationController
  def index
    @pets = ['Pet 1', 'Pet 2', 'Pet 3']
  end
end