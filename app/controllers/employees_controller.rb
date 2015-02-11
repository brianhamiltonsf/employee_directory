class EmployeesController < ApplicationController

before_action :find_employee, only: [ :show, :edit, :update, :destroy ]
# before_action :require_admin, except: [ :index, :show ]

def index
  @employees = Employee.all
end

def show
end

def new
  @employee = Employee.new
end

def create
  @employee = Employee.new(employee_params)
  if @employee.save
    flash[:notice] = "#{@employee.name} was successfully created."
    session[:employee_id] = @employee.id
    redirect_to employees_path
  else
    render :new
  end
end

def edit
end

def update
  if @employee.update(employee_params)
    flash[:notice] = "#{@employee.name} was successfully updated."
    redirect_to employees_path
  else
    render :edit
  end
end

def destroy
  @employee.destroy
  flash[:notice] = "#{@employee.name} was successfully deleted."
  redirect_to employees_path
end

private

def employee_params
  params.require(:employee).permit!
end

def find_employee
  @employee = Employee.find(params[:id])
end

end
