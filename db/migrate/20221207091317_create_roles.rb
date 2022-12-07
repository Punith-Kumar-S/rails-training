class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.integer :role_id
      t.string :project_name
      t.string :role_name
      t.integer :role_code

      t.timestamps
    end
  end
end
