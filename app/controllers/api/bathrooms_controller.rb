class Api::BathroomsController < ApplicationController

  def index 
    @bathrooms = Bathroom.all
    render
  end

  def show
    the_id = params[:id]
    @bathroom = Bathroom.find_by(id: the_id)
    render json: @bathroom
  end

  def create
    @bathroom = Bathroom.create(
      label: params[:label],
      lat: params[:lat],
      lng: params[:lng]
      )
    @bathroom.save
    render :show
  end

  def update
    the_id = params[:id]
    @bathroom = Bathroom.find_by(id: the_id)
    @bathroom.label = params[:label] || @bathroom.label
    @bathroom.lat = params[:lat] || @bathroom.lat
    @bathroom.lng = params[:lng] || @bathroom.lng

    @bathroom.save
    render :show
  end

  def destroy
    @bathroom = Bathroom.find_by(id: params[:id])

    if @bathroom.present?
      @bathroom.destroy
      @bathroom.save
    end

    render
  end
end
