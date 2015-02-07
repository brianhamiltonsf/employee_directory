class AddIndexesToEmployees < ActiveRecord::Migration
  def change
    add_index :employees, :firstname
    add_index :employees, :lastname
    add_index :employees, :manager_id
    add_index :employees, :department_id
    add_index :employees, :phone
  end
end
