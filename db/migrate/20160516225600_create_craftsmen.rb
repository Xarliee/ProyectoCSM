class CreateCraftsmen < ActiveRecord::Migration
  def change
    create_table :craftsmen do |t|
      t.string :name
      t.string :email
      t.string :region
      t.text :bio
      t.string :category
      t.string :comuna
      t.string :phone
      t.references :user, index: true, foreign_key: true
      t.integer :age

      t.timestamps null: false
    end
  end
end
