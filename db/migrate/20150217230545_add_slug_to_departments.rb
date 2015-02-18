class AddSlugToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :slug, :string
  end
end
