class Api::EventSongsController < ApplicationController
  def index
    @event_songs = EventSong.all
    render "index.json.jbuilder"
  end
end