class CreateEmployeeServices < ActiveRecord::Migration[6.1]
  def change
    create_table :employee_services do |t|
      t.references :service, null: false, foreign_key: true
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
