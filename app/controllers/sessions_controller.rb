class SessionsController < ApplicationController

  def new
  end

  def create
    employee = Employee.find_by(email: params[:email])
    if employee && employee.authenticate(params[:password])
      session[:employee_id] = employee.id
      redirect_to root_path
    else
      flash[:danger] = "Your username and/or password are incorrect."
      redirect_to login_path
    end
  end

  def destroy
    session[:employee_id] = nil
    redirect_to root_path
  end

end
