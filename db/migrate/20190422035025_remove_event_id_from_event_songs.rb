class RemoveEventIdFromEventSongs < ActiveRecord::Migration[5.2]
  def change
    remove_column :event_songs, :event_id, :integer
  end
end
