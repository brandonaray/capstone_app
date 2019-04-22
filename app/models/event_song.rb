class EventSong < ApplicationRecord
  belongs_to :song_version
  belongs_to :event_user
end