class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.text :description
      t.integer :leader_id

      t.timestamps
    end
  end
end
