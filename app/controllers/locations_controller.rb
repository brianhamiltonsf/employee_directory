class LocationsController < ApplicationController
  before_action :find_location, only: [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
  end

  def show
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:notice] = "#{@location.name} was successfully created."
      redirect_to locations_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      flash[:notice] = "#{@location.name} was successfully updated."
      redirect_to locations_path
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    flash[:notice] = "#{@location.name} has been successfully deleted."
    redirect_to locations_path
  end

  private

  def find_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit!
  end
end