class AddStatusToEventUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :event_users, :status, :string
  end
end
