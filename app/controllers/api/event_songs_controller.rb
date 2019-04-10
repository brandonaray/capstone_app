class Api::EventSongsController < ApplicationController
  def index
    @event_songs = EventSong.all
    render "index.json.jbuilder"
  end

  def show
    @event_song = EventSong.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end