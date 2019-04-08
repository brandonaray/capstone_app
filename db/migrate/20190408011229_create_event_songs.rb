class CreateEventSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :event_songs do |t|
      t.integer :song_version_id
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
  end
end
