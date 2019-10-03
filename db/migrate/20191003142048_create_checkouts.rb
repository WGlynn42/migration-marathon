class CreateCheckouts < ActiveRecord::Migration[5.2]
  def change
    create_table :checkouts do |t|
      t.string :name
      t.belongs_to :book, null: false

      t.timestamps
    end
  end
end
