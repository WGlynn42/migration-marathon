class DeleteCategoriesNameColumn < ActiveRecord::Migration[5.2]
  def up
    remove_column :checkouts, :name
    add_reference :checkouts, :reader, index: true
  end

  def down
    add_column :checkouts, :name, :string
    remove_column :checkouts, :reader_id
  end
end
