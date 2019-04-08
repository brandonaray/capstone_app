class CreateSongVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :song_versions do |t|
      t.integer :song_id
      t.string :label
      t.integer :duration
      t.string :song_url
      t.string :lyrics

      t.timestamps
    end
  end
end
