class TripsController < ApplicationController

  def index
    @trips = Trip.all
    render :index
  end

  def show
    @trip = Trip.find_by(id: params[:id])
    render :show
  end 

  def create 
    @trip = Trip.create(
      title: params[:trip][:title],
      image: params[:trip][:image],
      start_time: params[:trip][:start_time],
      end_time: params[:trip][:end_time],
    )
    redirect_to "/trips"
  end


  def edit
    @trip = Trip.find_by(user_id: params[:user_id])
    render :edit
  end

  def update
    @trip = Trip.find_by(user_id: params[:user_id])
    @trip.update(
      title: params[:trip][:title],
      image: params[:trip][:image],
      start_time: params[:trip][:start_time],
      end_time: params[:trip][:end_time],
    )
    redirect_to "/trips"
  end


  def destroy
    @trip = Trip.find_by(id: params[:id])
    @trip.destroy
    redirect_to "/trips", status: :see_other
  end


end
