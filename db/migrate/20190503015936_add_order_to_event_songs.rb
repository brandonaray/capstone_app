class AddOrderToEventSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :event_songs, :order, :integer
  end
end
