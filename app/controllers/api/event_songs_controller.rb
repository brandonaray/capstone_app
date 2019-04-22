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
      event_user_id: current_event_user.id
    )
    if @event_song.save
      render "show.json.jbuilder"
    else
      render json: {errors: @event_song.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @event_song = EventSong.find_by(id: params[:id])
    @event_song.destroy
    render json: {message: "Song removed from queue"}
  end
end