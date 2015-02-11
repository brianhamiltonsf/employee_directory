class AddDefaultValueToEmployeesAdmin < ActiveRecord::Migration
  def up
    change_column :employees, :admin, :boolean, default: false
  end

  def down
    change_column :employees, :admin, :boolean, default: nil
  end
end
