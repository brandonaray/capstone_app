class Api::EventSongsController < ApplicationController
  def index
    @event_songs = current_event_songs
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

  def update_orders
    params[:ids].each_with_index do |id, index| 
      event_song = EventSong.find_by(id: id)
      event_song.update(order: index)
    end

  end
end