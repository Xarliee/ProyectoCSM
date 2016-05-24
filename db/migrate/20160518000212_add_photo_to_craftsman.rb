class AddPhotoToCraftsman < ActiveRecord::Migration
  def change
    add_column :craftsmen, :photo, :string
  end
end
