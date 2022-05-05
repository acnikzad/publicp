class Api::BathroomsController < ApplicationController

  def index 
    @bathrooms = Bathroom.all
    render
  end

  def show
    the_id = params[:id]
    @bathroom = Bathroom.find_by(id: the_id)
    puts @bathroom
    render json: @bathroom 
  end

  def create
    @bathroom = Bathroom.create(
      park: params[:park],
      latitude: params[:latitude],
      longitude: params[:longitude]
      )
    @bathroom.save
    render :show
  end

  def update
    the_id = params[:id]
    @bathroom = Bathroom.find_by(id: the_id)
    @bathroom.park = params[:park] || @bathroom.park
    @bathroom.latitude = params[:latitude] || @bathroom.latitude
    @bathroom.longitude = params[:longitude] || @bathroom.longitude

    @bathroom.save
    render :show
  end

  def destroy
    @bathroom = Bathroom.find_by(id: params[:id])

    @bathroom.destroy
    @bathroom.save

    render 'destroy.json.jb'
  end

end
