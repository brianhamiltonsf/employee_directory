class RemoveColumnsFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :address1
    remove_column :employees, :address2
    remove_column :employees, :city
    remove_column :employees, :state
    remove_column :employees, :zip
  end
end
