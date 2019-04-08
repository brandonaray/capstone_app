class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :event_name
      t.integer :event_duration
      t.string :event_status

      t.timestamps
    end
  end
end
