# frozen_string_literal: true

# Controller for shelters path
class SheltersController < ApplicationController
  def index
    @shelters = Shelter.all
  end

  def new; end

  def create
    shelter = Shelter.new({
      name: params[:shelter][:name],
      address: params[:shelter][:address],
      city: params[:shelter][:city],
      state: params[:shelter][:state],
      zip_code: params[:shelter][:zip_code],
      })

    shelter.save

    redirect_to '/shelters'
  end
end
