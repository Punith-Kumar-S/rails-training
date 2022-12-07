class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.integer :company_id
      t.string :company_name
      t.integer :no_of_employee
      t.text :address
      t.string :department_name
      t.bigint :phone_number

      t.timestamps
    end
  end
end
