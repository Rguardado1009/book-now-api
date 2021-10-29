class AddKnownforToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :Knownfor, :string
  end
end
