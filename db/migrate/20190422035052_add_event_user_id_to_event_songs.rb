class AddEventUserIdToEventSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :event_songs, :event_user_id, :integer
  end
end
