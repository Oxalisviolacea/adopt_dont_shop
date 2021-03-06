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
                            zip_code: params[:shelter][:zip_code]
                          })

    shelter.save

    redirect_to '/shelters'
  end

  def show
    @shelter = Shelter.find(params[:id])
  end

  def edit
    @shelter = Shelter.find(params[:id])
  end

  def update
    shelter = Shelter.find(params[:id])
    shelter.update({
                     name: params[:shelter][:name],
                     address: params[:shelter][:address],
                     city: params[:shelter][:city],
                     state: params[:shelter][:state],
                     zip_code: params[:shelter][:zip_code]
                   })
    shelter.save
    redirect_to "/shelters/#{shelter.id}"
  end

  def destroy
    Shelter.destroy(params[:id])
    redirect_to '/shelters'
  end
end
