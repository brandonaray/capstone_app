json.array! @event_songs.each do |event_song|
  json.partial! "event_song.json.jbuilder", event_song: event_song
end