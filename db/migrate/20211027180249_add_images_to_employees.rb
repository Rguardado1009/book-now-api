class AddImagesToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :images, :text
  end
end
