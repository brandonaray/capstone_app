class SongVersion < ApplicationRecord
  belongs_to :song

  def friendly_duration
    "#{duration / 60}:#{duration % 60}"
  end
end
