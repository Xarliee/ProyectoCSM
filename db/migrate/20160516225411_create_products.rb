class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.integer :stock
      t.text :process
      t.text :description
      t.references :craftsman, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
