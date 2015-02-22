class AddFullnameToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :fullname, :string
  end
end
