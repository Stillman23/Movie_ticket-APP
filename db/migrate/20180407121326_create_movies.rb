class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :image
      t.string :title
      t.text :description
      t.decimal :price
      t.string :time
      t.string :theatre_room

      t.timestamps
    end
  end
end
