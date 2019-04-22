class RemoveUserIdFromEventSongs < ActiveRecord::Migration[5.2]
  def change
    remove_column :event_songs, :user_id, :integer
  end
end
