class EmployeesController < ApplicationController

before_action :find_employee, only: [ :show, :edit, :update, :destroy ]
before_action :require_admin, except: [ :index, :show, :edit, :update ]

def index
  if params[:search]
      @employees = Employee.search(params[:search])
      if params[:search].blank?
        redirect_to root_path
        flash[:danger] = 'You did not enter a name to search for.'
      elsif @employees.length == 0
        redirect_to root_path
        flash[:danger] = 'There are no employees with that name.'
      elsif @employees.length == 1
        redirect_to employee_path(@employees)
      else
        @employees
      end
  else
    @employees = Employee.paginate(page: params[:page], per_page: 10).order("lastname")
  end
end

def show
end

def new
  @employee = Employee.new
end

def create
  @employee = Employee.new(employee_params)
  if @employee.save
    flash[:success] = "#{@employee.name} was successfully created."
    redirect_to employees_path
  else
    render :new
  end
end

def edit
end

def update
  if @employee.update(employee_params)
    redirect_to employee_path(@employee)
  else
    render :edit
  end
end

def destroy
  if @employee == current_employee
    @employee.destroy
    redirect_to logout_path
  else
    @employee.destroy
    redirect_to employees_path
  end
  flash[:success] = "#{@employee.name} was successfully deleted."
end

private

def employee_params
  params.require(:employee).permit!
end

def find_employee
  @employee = Employee.find_by(slug: params[:id])
end

end
