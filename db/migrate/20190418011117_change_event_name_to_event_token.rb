class ChangeEventNameToEventToken < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :event_name, :event_token
  end
end
