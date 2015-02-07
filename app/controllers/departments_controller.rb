class DepartmentsController < ApplicationController

  before_action :find_department, only: [:show,:edit,:update,:destroy]

  def index
    @departments = Department.all
  end

  def show
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    if @deparment.save
      flash[:notice] = "#{@department.name} was successfully created."
      redirect_to departments_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @department.update(department_params)
      flash[:notice] = "#{@department.name} was successfully updated."
      redirect_to departments_path
    else
      render :edit
    end
  end

  def destroy
    @department.destroy
    flash[:notice] = "#{@department.name} was successfully deleted."
    redirect_to departments_path
  end

  private

  def find_department
    @department = Department.find(params[:id])
  end

  def department_params
    params.require(:department).permit(:names,:description,:leader_id)
  end

end
