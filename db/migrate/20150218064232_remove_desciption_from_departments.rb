class RemoveDesciptionFromDepartments < ActiveRecord::Migration
  def change
    remove_column :departments, :description
  end
end
