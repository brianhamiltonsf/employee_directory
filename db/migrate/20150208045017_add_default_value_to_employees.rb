class AddDefaultValueToEmployees < ActiveRecord::Migration
  def up
    change_column :employees, :manager, :boolean, default: false
  end

  def down
    change_column :employees, :manager, :boolean, default: nil
  end
end
