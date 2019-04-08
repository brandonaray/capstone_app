class CreateCategorySongs < ActiveRecord::Migration[5.2]
  def change
    create_table :category_songs do |t|
      t.integer :song_id
      t.integer :category_id

      t.timestamps
    end
  end
end
