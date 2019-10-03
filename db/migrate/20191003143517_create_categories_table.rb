class CreateCategoriesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |table|
      table.string :name, :null => false
    end
  end
end
