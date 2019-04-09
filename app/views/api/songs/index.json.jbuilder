json.array! @songs.each do |song|
  json.partial! "song.json.jbuilder", song: song
end