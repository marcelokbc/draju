class AddPhotoToAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :photo, :string
  end
end
