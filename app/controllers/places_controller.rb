class PlacesController < ApplicationController
 
def index
  @places = Place.all
  render :index
end

def show
  @place = Place.find_by(id: params[:id])
  render :show
end

def new
  @place = Place.new
  render :new
end

def create
  @place = Place.create(
    address: params[:place][:address],
    name: params[:place][:name],
    description: params[:place][:description],
    trip_id: params[:place][:trip_id],
    image: params[:place][:image],
  )
  redirect_to "/places"
end

def edit
  @place = Place.find_by(id: params[:id])
  render :edit

end

def update
  @place = place.find_by(id: params[:id])
  @place.update(
    address: params[:place][:address],
    name: params[:place][:name],
    description: params[:place][:description],
    image: params[:place][:image],
  )
  redirect_to "/places"
end

end
