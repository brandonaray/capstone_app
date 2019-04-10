class Api::EventSongsController < ApplicationController
  def index
    @event_songs = EventSong.all
    render "index.json.jbuilder"
  end

  def show
    @event_song = EventSong.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @event_song = EventSong.new(
      song_version_id: params[:song_version_id],
      user_id: params[:user_id],
      event_id: params[:event_id]
    )
    if @event_song.save
      render "show.json.jbuilder"
    else
      render json: {errors: @event_song.errors.full_messages}, status: :unprocessable_entity
    end
  end
end