json.array! @category_songs.each do |category_song|
  json.id category_song.id
  json.category_id category_song.category_id
  json.song_id category_song.song_id
  json.song_title category_song.song_title
  json.song_artist category_song.song_artist
  json.song_duration category_song.song_versions[0].friendly_duration
end