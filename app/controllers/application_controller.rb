class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_employee

  def logged_in?
    !!session[:employee_id]
  end

  def current_employee
    @current_employee || Employee.find(session[:employee_id]) if session[:employee_id]
  end

  def require_admin
    if current_employee.admin?
      return true
    else
      flash[:error] = "Admin access required."
      redirect_to root_path
    end
  end

end
