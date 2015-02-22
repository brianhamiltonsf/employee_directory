class LocationsController < ApplicationController
  before_action :find_location, only: [ :show, :edit, :update, :destroy ]
  before_action :require_admin, except: [ :index, :show ]

  def index
    @locations = Location.paginate(page: params[:page], per_page: 10).order(:name)
  end

  def show
    @employees = Employee.where("location_id = ?", @location.id).order(:lastname).paginate(page: params[:page], per_page: 10)
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:success] = "#{@location.name} was successfully created."
      redirect_to locations_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @location.update(location_params)
      flash[:success] = "#{@location.name} was successfully updated."
      redirect_to locations_path
    else
      render :edit
    end
  end

  def destroy
    @location.destroy
    flash[:success] = "#{@location.name} has been successfully deleted."
    redirect_to locations_path
  end

  private

  def find_location
    @location = Location.find_by(slug: params[:id])
  end

  def location_params
    params.require(:location).permit!
  end
end
