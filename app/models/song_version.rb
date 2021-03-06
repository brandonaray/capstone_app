class SongVersion < ApplicationRecord
  belongs_to :song
  has_many :event_songs

  def friendly_duration
    minutes = duration / 60
    seconds = duration % 60
    if seconds < 10
      return "#{minutes}:0#{seconds}"
    else
      return "#{minutes}:#{seconds}"
    end
  end
end
