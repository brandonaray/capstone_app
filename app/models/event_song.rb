class EventSong < ApplicationRecord
  belongs_to :song_version
  belongs_to :user
  belongs_to :event
end
