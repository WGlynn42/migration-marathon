class AddAuthorToBooks < ActiveRecord::Migration[5.2]
  def up
    add_column :books, :author, :string, null: false
  end
  def down
    remove_column :books, :author
  end
end
