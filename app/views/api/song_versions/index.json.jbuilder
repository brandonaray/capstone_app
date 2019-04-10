json.array! @song_versions.each do |song_version|
  json.partial! "song_version.json.jbuilder", song_version: song_version
end