class RemoveFavorites < ActiveRecord::Migration[5.2]
  def up
    remove_column :books, :favorite
  end

  def down
    add_column :books, :favorite, :boolean
  end

end
