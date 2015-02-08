module ApplicationHelper

  def all_departments
    Department.order(:name).map { |dep| [dep.name,dep.id] }
  end

  def all_managers
    Employee.find_by(:manager).order(:lastname).map { |manager| [manager.name,manager.id] }
  end

end
